p:
	@nix-shell -p texlive.combined.scheme-full

b:
	@mkdir -p build
	@echo "[INFO]: Building bibliography..."
	@pdflatex -output-directory=build main.tex > /dev/null
	@cd build && bibtex main > /dev/null
	@echo "[INFO]: Building paper..."
	@pdflatex -output-directory=build main.tex > /dev/null
	@pdflatex -output-directory=build main.tex > ./build/last.log
	@echo "[INFO]: Logs available at ./build/last.log"
	@cp build/main.pdf latest/paper.pdf
	@echo "[INFO]: Done!"

c:
	@rm -rf build
	@rm figures/*.pdf

v:
	@firefox --name firefox latest/main.pdfS