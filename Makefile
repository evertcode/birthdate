.PHONY: cv_hebert

CC = xelatex
EXAMPLES_DIR = .
OUTPUT_DIR = ./output
CV_DIR = ./cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

main.pdf: $(EXAMPLES_DIR)/main.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
