# Use LuaLaTeX as the PDF engine
$pdf_mode = 4;   # 1 = pdflatex, 4 = lualatex, 5 = xelatex

# Flags passed to lualatex
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Always run BibTeX/Biber when a .bib file is referenced
$bibtex_use = 2;   # 0 = never, 1 = if .bib exists, 2 = always when referenced

# Register Beamer-specific auxiliary files so latexmk -C cleans them up
push @generated_exts, 'nav', 'snm', 'vrb', 'synctex.gz';
