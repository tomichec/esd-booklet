SRC=$(foreach i, 1 2 3 4,leaflet-$i.svg)
PDF=$(SRC:.svg=.pdf)

all: esd.pdf esd-all.pdf esd-print.pdf

esd-%.pdf: esd-%.tex esd.pdf
	pdflatex $<

esd.pdf: $(PDF)
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=$@ -dBATCH $+

%.pdf: %.svg
	inkscape -z $< -A $@

