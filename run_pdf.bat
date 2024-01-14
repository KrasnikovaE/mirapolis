# Сделать pdf
jupyter-book build  --all --builder latex ./docs
cd./docs/_build/latex 
make all-pdf
copy ./docs/_builder/latex/book.pdf ./docs/_static/download/promirapolis.pdf