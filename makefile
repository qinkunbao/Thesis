WHAT = Qinkun-Dissertation
CHANGELOG = changelog

all:
	pdflatex $(WHAT).tex
	bibtex $(WHAT)
	pdflatex $(WHAT).tex
	pdflatex $(WHAT).tex
	pdflatex $(CHANGELOG).tex
	pdflatex $(CHANGELOG).tex

best: 
	pdflatex $(WHAT).tex
	bibtex $(WHAT)
	pdflatex $(WHAT).tex
	pdflatex $(WHAT).tex

fast: 
	pdflatex $(WHAT).tex

xfast: 
	taskkill /f /im acrobat.exe ; echo OK
	pdflatex $(WHAT).tex
	explorer $(WHAT).pdf ; echo OK

xbest: 
	taskkill /f /im acrobat.exe ; echo OK
	pdflatex $(WHAT).tex
	bibtex $(WHAT)
	pdflatex $(WHAT).tex
	pdflatex $(WHAT).tex
	explorer $(WHAT).pdf ; echo OK

log:
	pdflatex $(CHANGELOG).tex
	pdflatex $(CHANGELOG).tex

clean: 
	rm *.log *.aux *.bbl *.blg *.ent $(WHAT).toc $(WHAT).dvi $(WHAT).ps $(WHAT).pdf $(CHANGELOG).toc $(CHANGELOG).dvi $(CHANGELOG).ps $(CHANGELOG).pdf
