TARGETS=Analysis.html

all:		$(TARGETS)

.PHONY:		clean
clean:
		rm -f $(TARGETS)

.PHONY:		show
show:		$(TARGETS)
		xpdf $^

%.html %.md:	%.Rmd
		echo 'library(rmarkdown); render("$^", output_format="html_document");' | R --no-save

