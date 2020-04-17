all: babette_header.pdf
	mv babette_header.pdf babette_article.pdf
	./view.sh

babette_header.pdf: babette_article.tex
	pdflatex babette_header --shell-escape
	bibtex babette_header
	pdflatex babette_header --shell-escape
	pdflatex babette_header --shell-escape

clean:
	./clean.sh

