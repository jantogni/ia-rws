SHELL=/bin/bash
NAME=presentacion
BIN=bin

FLAGS=-output-directory $(BIN)

DEPENDENCIES=$(NAME).tex

all: compile clean

compile:
	@mkdir -p bin
	@pdflatex $(FLAGS) $(NAME).tex
	@pdflatex $(FLAGS) $(NAME).tex

clean:
	@rm -f $(BIN)/$(NAME).{aux,toc,log,out,nav,snm} *~

distclean:
	@rm -f $(BIN)/$(NAME).{pdf,aux,toc,log,out,nav,snm}

x:
	@evince bin/$(NAME).pdf
