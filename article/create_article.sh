#!/bin/bash

pdflatex babette_header --shell-escape
bibtex babette_header
pdflatex babette_header --shell-escape
pdflatex babette_header --shell-escape
mv babette_header.pdf babette_article.pdf

# pdfunite babette_article.pdf ../figures/figures.pdf article_full.pdf
