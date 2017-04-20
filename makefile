
server:
	jekyll serve

view:
	open http://localhost:4000

cv: makefile malick-cv.md
	tail +12 malick-cv.md > cv-body.md
	perl -p -i -e "s/<br>/ /g" cv-body.md
	pandoc -S cv-body.md -o cv-body.tex
	pdflatex malick-cv.tex
	rm cv-body.tex
	rm cv-body.md
	rm *.log *.out *.aux
	cp malick-cv.md ./cv/index.md

