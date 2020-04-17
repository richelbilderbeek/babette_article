#!/bin/bash
#
# Spell-check the TeX.
#
# Will ignore:
#   * Text in `\verb;[here];`, as this is code
#   * Text in listings, as this is code
#   * Text in 'Samenvatting', as this is Dutch
#
# Usage:
#
#   ./spell_check.sh
#

# Remove '\verb;[here];'

cat babette_article.tex | sed 's/\\verb;.*;//g' > tmp.tex

cat tmp.tex | egrep "verb"
#aspell -t -c babette_article.tex

