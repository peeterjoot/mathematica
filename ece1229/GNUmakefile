htmlfromscript := $(subst .script,.html,$(wildcard *.script))

all :: $(htmlfromscript) index.html

index.html : ../METADATA ../../notes/METADATA
	(cd ../../notes ; ./METADATA -mathematica -cdf -ece1229) > $@

clean::
	rm -f index.html

%.html : %.script
	./script2html.pl -script $^ > $@
