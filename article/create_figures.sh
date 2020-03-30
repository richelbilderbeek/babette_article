#!/bin/bash

# Run twice for labels
pdflatex babette_figures.tex --shell-escape
pdflatex babette_figures.tex --shell-escape
