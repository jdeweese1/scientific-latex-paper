all: clean paper tex tex2pdf


paper:
	pandoc --citeproc --bibliography=paper.bib \
	--variable classoption=twocolumn \
	--variable papersize=a4paper \
	--filter pandoc-include \
	-s paper.md -o tutorial.pdf

highlight:
	pandoc --citeproc --bibliography=paper.bib \
	--variable classoption=twocolumn \
	--variable papersize=a4paper \
	--listings -H listings-setup.tex \
	--filter pandoc-include \
	-s paper.md -o highlighted.pdf

tex:
	pandoc --citeproc --bibliography=paper.bib \
	--variable classoption=twocolumn \
	--variable papersize=a4paper \
	-s paper.md -o paper.tex

tex2pdf:
	pdflatex paper.tex

clean:
	rm -f *.pdf *.log paper.tex *.aux