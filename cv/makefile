
cv: 
	# Need to copy md file to replace - with -- for html
	cp malick-cv.md index.md
	perl -p -i -e "s/--/-/g" index.md 
	# LaTeX processing
	tail +14 malick-cv.md > cv-body.md
	perl -p -i -e "s/<br>/ /g" cv-body.md 
	# perl -p -i -e "s/<br>/\\\newline/g" cv-body.md 
	pandoc -S cv-body.md -o cv-body.tex
	perl -p -i -e "s/itemsep1pt/itemsep10pt/g" cv-body.tex 
	pdflatex malick-cv.tex
	rm cv-body.tex
	rm cv-body.md
	rm *.log *.out *.aux
	cp malick-cv.pdf ~/dropbox/public/cv


clean:
	rm -f *.{pdf,aux,out,log}
