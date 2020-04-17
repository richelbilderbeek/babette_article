#!/bin/bash
#
# Count the words in the article
#
# Usage:
#
#   ./count_words
#
cat babette_article.tex | sed 's/\$/x/g' > tmp.tex
texcount tmp.tex
rm tmp.tex
