paper: data_science.bib data_science.tex fig/fig1.pdf fig/fig2.pdf
	xelatex data_science.tex
	bibtex data_science.aux
	xelatex data_science.tex
	evince data_science.pdf

fig/fig1.pdf: R/fig1.R
	cd R; R CMD BATCH fig1.R

fig/fig2.pdf: R/fig2.R
	cd R; R CMD BATCH fig2.R


