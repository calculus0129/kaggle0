# Beamer Presentation Project

A LaTeX Beamer slide deck with Korean language support via `kotex`.  
The project uses **LuaLaTeX** as the compiler engine, managed by **latexmk**.

---

## Prerequisites

| Requirement | Notes |
|---|---|
| **TeX distribution** | [TeX Live](https://tug.org/texlive/) (Linux/Mac) or [MiKTeX](https://miktex.org/) (Windows) |
| **LuaLaTeX** | Included in any full TeX distribution install |
| **latexmk** | Included in TeX Live full; install separately on MiKTeX (`miktex-latexmk`) |
| **kotex package** | Part of TeX Live (`texlive-lang-korean`) or auto-installed by MiKTeX on first build |
| **Korean fonts** | See [Font Setup](#font-setup) below |
| **VS Code extension** | [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) (optional, for IDE workflow) |

---

## Building

Build configuration is defined in `.latexmkrc` — latexmk reads it automatically.  
It sets LuaLaTeX as the engine and ensures BibTeX always runs when references are cited.

### Command line

```bash
# Full build (lualatex → bibtex → lualatex → lualatex)
latexmk main.tex

# Clean auxiliary files (keeps PDF)
latexmk -c

# Clean everything including PDF
latexmk -C
```

### VS Code (LaTeX Workshop)

Open the project folder in VS Code. The `.vscode/settings.json` is pre-configured:

- **Auto-build on save** — triggered every time you save `main.tex`.
- **Default recipe** — `latexmk (lualatex)`, which delegates all engine/bibtex config to `.latexmkrc`.
- **SyncTeX** — `Ctrl+click` in the PDF to jump to the source line; `Ctrl+Alt+J` to jump to PDF from source.
- **Auxiliary file cleanup** — runs automatically on a successful build.

To manually trigger a build: open the Command Palette (`Ctrl+Shift+P`) and run  
`LaTeX Workshop: Build with recipe` → select a recipe.

> **Note:** The `% !TEX program = latexmk` magic comment at the top of `main.tex` ensures  
> LaTeX Workshop always uses the full latexmk recipe (not a bare single-pass lualatex).  
> Do not change this to `lualatex` or BibTeX citations will break.

---

## Project Structure

```
.
├── main.tex            # Main Beamer source file
├── refs.bib            # BibTeX bibliography database
├── .latexmkrc          # latexmk configuration (engine, bibtex settings)
├── .gitignore          # GitHub's standard TeX gitignore
├── README.md           # This file
└── .vscode/
    └── settings.json   # LaTeX Workshop workspace settings
```

Add figures to an `img/` folder and reference them with `\includegraphics{img/filename}`.

---

## Citations & Bibliography

Add entries to `refs.bib` in standard BibTeX format:

```bibtex
@book{book:571187,
  title     = {Principles of Mathematical Analysis},
  author    = {Walter Rudin},
  publisher = {McGraw-Hill},
  year      = {1976},
  edition   = {3rd}
}

@article{blondel2008fast,
  title   = {Fast unfolding of communities in large networks},
  author  = {Blondel, Vincent D and others},
  journal = {Journal of statistical mechanics},
  year    = {2008}
}
```

Then cite anywhere in `main.tex` with:

```latex
...as shown in~\cite{book:571187}.
```

The References slide at the end of the presentation auto-populates with only the entries
you actually cited. `[allowframebreaks]` on that frame splits it across multiple slides
if needed.

Common entry types: `@article`, `@book`, `@inproceedings`, `@misc`.  
BibTeX entries can be exported directly from Google Scholar, Zotero, or Mendeley.

---

## Korean Support (kotex)

Korean text is enabled by:

```latex
\usepackage{fontspec}   % LuaLaTeX font loader
\usepackage{kotex}      % Korean typesetting (luatexko)
```

Korean can then be typed directly as Unicode literals anywhere in the document.

### Font Setup

`kotex` automatically selects a default Korean font. If the build fails with a font error,
install one of the following font families and uncomment the corresponding lines in `main.tex`:

| Font family | Package (TeX Live) | Download |
|---|---|---|
| Noto CJK | `fonts-noto-cjk` (Linux) | [Google Fonts](https://fonts.google.com/noto) |
| Nanum | `texlive-fonts-extra` or MiKTeX package `nanumtype1` | [네이버 나눔글꼴](https://hangeul.naver.com/font) |

**Windows / MiKTeX**: Fonts installed system-wide (via the OS font installer) are automatically
available to LuaLaTeX — no extra configuration needed.

```latex
% Example: explicit font selection in main.tex
\setmainhangulfont{Noto Serif CJK KR}
\setsanshangulfont{Noto Sans CJK KR}
```

---

## Tips

- LuaLaTeX is slower than pdflatex on first run but subsequent incremental builds via `latexmk`
  are fast thanks to caching.
- Use `\pause` inside a frame to create build-up animations across PDF pages.
- Use `\only<2>{...}` or `\uncover<2>{...}` for more fine-grained slide overlays.
