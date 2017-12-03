TARGETS=Analysis.html

all:		$(TARGETS)

.PHONY:		clean
clean:
		rm -f $(TARGETS)

.PHONY:		show
show:		$(TARGETS)
		xpdf $^

%.html %.md:	%.Rmd
		# echo 'library(knitr);knit2pdf("$^");' | R --no-save`
		echo 'library(rmarkdown); render("$^", output_format="html_document");' | R --no-save

