PAPER = protocol
TEX = $(wildcard *.tex)

.PHONY: all clean

$(PAPER).pdf: $(TEX) 
	echo $^
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	$(RM) *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
