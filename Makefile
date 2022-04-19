.PHONY: ./

CC = xelatex
CV_DIR = ./cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

main.pdf: ./main.tex $(CV_SRCS)
	$(CC) -output-directory=./output $<

clean:
	rm -rf ./output/*.pdf
