all: words.txt histogram.tsv

clean:
	rm -f words.txt
	
words.txt: /usr/share/dict/words
	cp $< $@

histogram.tsv: histogram.R words.txt
	Rscript $<