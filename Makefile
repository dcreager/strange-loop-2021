.PHONY: all clean

NAME = presentation
PDF = 

all: $(NAME).pdf

clean:
	@rm $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	@echo "XELATEX     $@"
	@script/silence-unless-error xelatex -halt-on-error $<
	@echo "XELATEX     $@"
	@script/silence-unless-error xelatex -halt-on-error $<