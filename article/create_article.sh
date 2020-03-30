#!/bin/bash

pdflatex babette_article.tex --shell-escape
bibtex babette_article.aux
pdflatex babette_article.tex --shell-escape
pdflatex babette_article.tex --shell-escape

# pdfunite babette_article.pdf ../figures/figures.pdf article_full.pdf
