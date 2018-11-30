main.pdf:	main.tex	Chapters/*.tex *.bib Appendices/*.tex  Makefile
	pdflatex main
	bibtex main
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm `cat .gitignore`
