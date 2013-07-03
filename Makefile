SOURCE_FILE=Relatorio

all:
	# latex $(SOURCE_FILE).tex
	# bibtex $(SOURCE_FILE).aux 
	# latex $(SOURCE_FILE).tex
	# dvipdfm $(SOURCE_FILE).dvi
	# rm $(SOURCE_FILE).dvi
	# evince $(SOURCE_FILE).pdf
	pdflatex $(SOURCE_FILE).tex
	bibtex $(SOURCE_FILE).aux 
	pdflatex $(SOURCE_FILE).tex
	pdflatex $(SOURCE_FILE).tex
	bibtex $(SOURCE_FILE).aux 
	pdflatex $(SOURCE_FILE).tex
	evince $(SOURCE_FILE).pdf

clean:
	rm -rf  *.log *.toc *.aux *.blg *.las *.lsb *.lot *.dvi *.pdf *.lof *.bbl
