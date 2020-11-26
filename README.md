# scientific-latex-paper

This repo provides a bulid system for writing scientific papers in Markdown, then rendering to a LaTex pdf.

## Requirements

- [pandoc](https://pandoc.org/installing.html)
- pandoc-citeproc
- [pandoc-include](https://github.com/DCsunset/pandoc-include)
- make

These first 3 can be installed with hombrew on macOS with:

```bash
$ brew install pandoc pandoc-citeproc
```

Pandoc-include can be installed via pip with:
```bash
$ pip install pandoc-include
```

## Building
You should be able to run any of the following at this point:
```bash
$ make all
$ make paper 
$ make tex
$ make tex2pdf
$make clean
```

