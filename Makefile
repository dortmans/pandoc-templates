# GNU Makefile only, sorry folks.

PANDOCPDF   := pandoc --toc --number-sections --latex-engine=xelatex -V lang=frenchb -V fontsize=11pt -V geometry:margin=3cm -V papersize=a4paper --template=./default.latex
PANDOCDOC   := pandoc --toc --number-sections --latex-engine=xelatex -V lang=frenchb -V fontsize=11pt -V geometry:margin=3cm -V papersize=a4paper

PDFS := $(patsubst %.md,%.md.pdf,$(wildcard *.md))
DOCX := $(patsubst %.md,%.md.docx,$(wildcard *.md))

all : $(PDFS)

pdf : $(PDFS)

docx: $(DOCX)

%.md.pdf : %.md
	$(PANDOCPDF) $< -o $@

%.md.docx : %.md
	$(PANDOCDOC) $< -o $@

clean :
	rm $(PDFS) $(DOCX)

rebuild : clean all
