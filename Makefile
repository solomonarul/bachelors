p:
	@nix-shell -p texlive.combined.scheme-full

b: c
	@mkdir -p build
	@echo "[INFO]: Building bibliography..."
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex > ./build/last0.log
	@cd build && bibtex main > ./bibtex.log
	@echo "[INFO]: Building paper..."
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex > ./build/last1.log
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex > ./build/last2.log
	@echo "[INFO]: Logs available at ./build/last<0,1,2>.log"
	@cp build/main.pdf latest/paper.pdf
	@echo "[INFO]: Done!"

bv: c
	@mkdir -p build
	@echo "[INFO]: Building bibliography..."
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex
	@cd build && bibtex main > ./bibtex.log
	@echo "[INFO]: Building paper..."
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex
	@pdflatex -interaction=nonstopmode -output-directory=build main.tex
	@cp build/main.pdf latest/paper.pdf
	@echo "[INFO]: Done!"

c:
	@rm -rf build
	@rm -f figures/*.pdf

v:
	@firefox --name firefox latest/main.pdfS