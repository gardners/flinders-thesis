main.pdf:	main.tex	Chapters/*.tex *.bib Appendices/*.tex  Makefile
	latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode" -use-make main.tex

spellcheck:
	./spellcheck.sh main.tex Chapters/*.tex Appendices/*.tex main.bib

clean:
	rm Chapters/*.aux Appendices/*.aux
	rm `cat .gitignore`
