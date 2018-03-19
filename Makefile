SRC=$(foreach i, 4 1 2 3,leaflet-$i.svg)
PDF=$(SRC:.svg=.pdf)

esd-all.pdf: esd-all.tex $(PDF)
	pdflatex $<

%.pdf: %.svg
	inkscape -z $< -A $@

