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
# Сделать html
! jupyter-book build  --all --builder linkcheck ./docs
```

```{code-cell} ipython3
# Сделать pdf
! jupyter-book build  --all --builder pdflatex ./docs
```

```{code-cell} ipython3
# Сделать и опубликовать
! jupyter-book build  --all --builder linkcheck ./docs
! jupyter-book build  --all --builder pdflatex ./docs
! copy ./docs/_builder/latex/book.pdf ./docs/_static/download/promirapolis.pdf
! ghp-import ./docs/_build/html --no-jekyll --push --force --cname=promirapolis.ru
```

```{code-cell} ipython3

```
