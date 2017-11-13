generuoti:
	xelatex -no-pdf kursinis.tex
	biber kursinis
	xelatex kursinis.tex
	open kursinis.pdf || xdg-open kursinis.pdf

fast: 
	xelatex -interaction=nonstopmode -output-driver='xdvipdfmx -z0' kursinis.tex 
	xdg-open kursinis.pdf

ubuntu:
	echo "Diegiamas LaTeX (PdfLaTeX, XeTeX ir kt.)"
	sudo apt-get install texlive-full
	echo "Diegiama literatūros sąrašo tvarkyklė Biber skirta BibLaTeX paketui"
	sudo apt-get install biber
	echo "Diegiami OpenType šriftai"
	sudo apt-get install fonts-texgyre
	echo "Diegiamas Palemonas šriftas į sistemą"
	sudo cp -r Palemonas-2.1 /usr/share/fonts/truetype/

clean:
	git clean -dfx
