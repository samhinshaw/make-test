### Making a Makefile

See Makefile in repo! We'll be following the guide [posted here](http://stat545-ubc.github.io/automation04_make-activity.html).  

Important note: YAML does not like tabs! Make sure to use spaces instead.  

```
words.txt: /usr/share/dict/words
	cp $< $@
```

This part after words.txt is called a "prerequisite" or "dependency", which is important for
1. Preventing typos
2. Keeping track of something that might change

Note that `make` has LOTS of other "[automatic variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)".

Up until now we've been testing by running the command, deleting words.txt, and then trying something else.  BUT, `make` can do this built in!  The commands are called `clean` and `all`.  
```
all: words.txt

clean:
	rm -f words.txt
	
words.txt: /usr/share/dict/words
	cp $< $@
```

Is it significant here that  
1. `all` and `clean` that they're first in the makefile?

and  
2.  
```
all: words.txt
```

instead of 
```
all:
	words.txt
```
