BUILD := $(wildcard *.tex ./sections/*.tex)
MAIN=main
SHELL=/usr/bin/bash


build: $(BUILD)
	$(shell ./pretty.sh)
	latexmk -pdf $(MAIN).tex
	latexmk -c

clean: 
	latexmk -C
