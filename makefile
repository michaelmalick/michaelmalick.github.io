CV_SRC   = cv-build
STATIC   = static
CONTENT  = content
CV_MD    = $(CONTENT)/cv.md

.PHONY: cv pdf txt server build clean

cv: pdf txt

pdf: $(CV_MD) $(CV_SRC)/malick-cv.tex
	awk '/<!-- pdf-start -->/{p=1; next} p' $(CV_MD) > $(CV_SRC)/cv-body.md
	cd $(CV_SRC) && \
	  pandoc cv-body.md -o cv-body.tex && \
	  pandoc malick-cv-head.md -o cv-head.tex && \
	  latexmk -pdf malick-cv.tex
	mv $(CV_SRC)/malick-cv.pdf $(STATIC)/malick-cv.pdf
	cd $(CV_SRC) && rm -f cv-body.tex cv-head.tex cv-body.md \
	  *.log *.out *.aux *.fls *.fdb_latexmk

txt: $(CV_MD)
	awk '/<!-- pdf-start -->/{p=1; next} p' $(CV_MD) > $(CV_SRC)/cv-body.md
	pandoc $(CV_SRC)/cv-body.md -o $(CV_SRC)/cv-body.txt
	cat $(CV_SRC)/malick-cv-head.md $(CV_SRC)/cv-body.txt > $(STATIC)/malick-cv.txt
	perl -pi -e 's/\\$$//g' $(STATIC)/malick-cv.txt
	rm -f $(CV_SRC)/cv-body.txt $(CV_SRC)/cv-body.md

server:
	hugo server -D

build:
	hugo

clean:
	cd $(CV_SRC) && rm -f cv-body.tex cv-head.tex cv-body.md \
	  *.log *.out *.aux *.fls *.fdb_latexmk
