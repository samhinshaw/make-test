all: words.txt

clean:
	rm -f words.txt
	
words.txt: /usr/share/dict/words
	cp $< $@