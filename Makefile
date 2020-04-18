ASDOCPDF = asciidoctor-pdf
ASDOC = asciidoctor
ASDOCFLAGS = -v -w\
 -r asciidoctor-pdf-cjk \
 -r asciidoctor-diagram \
 -a pdf-stylesdir=theme \
 -a pdf-style=my-theme.yml \
 -a pdf-fontsdir=fonts

all: output/arnold-coach.pdf

output/%.pdf: %.asdoc 
	$(ASDOCPDF) $(ASDOCFLAGS) $<

output:
	mkdir output