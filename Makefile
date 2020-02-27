LATEX = pdflatex
SLIDES_DIR := slides

.PHONY: slides
.ONESHELL:
slides: $(SLIDES_DIR)/slides.tex
	cd $(SLIDES_DIR)
	$(LATEX) --shell-escape slides.tex
	$(LATEX) --shell-escape slides.tex
	cp slides.pdf ../Your-Neural-Network-Is-Probably-Wrong.pdf

clean:
	cd $(SLIDES_DIR)
	rm -rf *.aux *.log *.out *.bbl *.bcf *.blg *.blg *.run.xml texput.log *.nav *.snm *.toc _minted-slides
