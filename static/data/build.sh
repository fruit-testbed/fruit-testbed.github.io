#!/bin/sh

bibtex2html -d -r -nodoc publications.bib
cat publications_bib.html | sed -e 's:<h1>.*</h1>::' > tmp.html && mv tmp.html publications_bib.html
