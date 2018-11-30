main.pdf:	main.tex	Chapters/*.tex *.bib Appendices/*.tex  Makefile
	pdflatex main
	bibtex main
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

spellcheck:
	./spellcheck.sh main.tex Chapters/*.tex Appendices/*.tex main.bib

clean:
	rm Chapters/*.aux Appendices/*.aux
	rm `cat .gitignore`
