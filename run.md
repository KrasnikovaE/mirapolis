---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.2
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---

```{code-cell} ipython3
# Сделать html локально
! jupyter-book build  --all --builder html ./docs
```

```{code-cell} ipython3
# Сделать pdf локально
! jupyter-book build  --all --builder pdflatex ./docs
! copy .\docs\_build\latex\book.pdf .\docs\_static\download\mirapolis.pdf
```

```{code-cell} ipython3
# Сделать и опубликовать
! jupyter-book build  --all --builder html ./docs
#! jupyter-book build  --all --builder pdflatex ./docs
#! copy ./docs/_builder/latex/book.pdf ./docs/_static/download/promirapolis.pdf
! ghp-import ./docs/_build/html --no-jekyll --push --force --cname=promirapolis.ru
```

```{code-cell} ipython3

```

```{code-cell} ipython3
! cd ./docs/_build/latex
! ./docs/_build/latex/make.bat
```

```{code-cell} ipython3
! jupyter-book build  --all --builder pdflatex ./docs
```

```{code-cell} ipython3

! dir
```
