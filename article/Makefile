all: babette_article.pdf
	echo "5) Done"
	./view.sh

babette_article.pdf: babette_header.pdf
	echo "4) Create 'babette_article.pdf'"
	mv babette_header.pdf babette_article.pdf

babette_header.pdf: babette_article.tex babette_header.bbl
	echo "3) Create 'babette_header.pdf'"
	pdflatex babette_header > /dev/null
	pdflatex babette_header > /dev/null

# bibtex:
# Three inputs:
#  * an .aux file produced by LaTeX on an earlier run
#  * a .bst file (the style file)
#  * a .bib file(s)
# Output: 
#  * a .bbl file
babette_header.bbl: babette_mee.bst babette_article.aux babette_header.aux babette_article.bib
	echo "2) Create 'babette_header.bbl'"
	bibtex babette_header > /dev/null

babette_article.aux: babette_article.tex
	echo "1a) Create 'babette_article.aux'"
	pdflatex babette_header > /dev/null

babette_header.aux: babette_article.tex
	echo "1b) Create 'babette_header.aux'"
	pdflatex babette_header > /dev/null

clean:
	./clean.sh

