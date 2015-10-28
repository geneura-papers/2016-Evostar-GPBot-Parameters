
texfile = MonteroEVO2016
bibfile = MonteroEVO2016.bib

documento: $(texfile).tex $(bibfile)
	latex $(texfile).tex
	bibtex $(texfile)
	latex $(texfile).tex
	bibtex $(texfile)	
	dvips $(texfile).dvi
	ps2pdf $(texfile).ps

clean:
	rm -f *~
	rm -f $(texfile).aux
	rm -f $(texfile).bbl
	rm -f $(texfile).blg
	rm -f $(texfile).dvi
	rm -f $(texfile).log
	rm -f $(texfile).out
	rm -f $(texfile).spl
	rm -f $(texfile).pdf
	rm -f $(texfile).ps
	rm -f $(texfile).tex.backup
	rm -f $(bibfile).backup
