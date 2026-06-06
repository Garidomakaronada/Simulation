# Makefile for compiling Garidomakaronada_Sim.tex using xelatex

PDF = Garidomakaronada_Sim.pdf
TEX = Garidomakaronada_Sim.tex
AUX_FILES = Garidomakaronada_Sim.aux Garidomakaronada_Sim.log Garidomakaronada_Sim.out

.PHONY: all clean distclean clean-aux

all: $(PDF) clean-aux

$(PDF): $(TEX)
	xelatex -interaction=nonstopmode $(TEX)
	xelatex -interaction=nonstopmode $(TEX)

clean-aux:
	rm -f $(AUX_FILES)

clean: clean-aux

distclean: clean
	rm -f $(PDF)
