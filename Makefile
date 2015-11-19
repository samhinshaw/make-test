all: histogram.png

clean:
	rm -f words.txt histogram.tsv histogram.png
	
words.txt: /usr/share/dict/words
	cp $< $@

histogram.tsv: histogram.R words.txt
	Rscript $<
	
histogram.png: plot.R histogram.tsv
	Rscript $<
	rm -f Rplots.pdf
	
report.html: report.Rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'