% Project documents README
% Jérôme Andrieux
% 2014

> NB: this document is both a README and a pandoc document example.

LaTeX produces great looking documents but no one has the time and the nerves to use it.

We use markdown everywhere, since it's easy to write but you can get decent "client ready" documents from it.

Pandoc is georgeous, yet its defaults need a little customization.

Workflow wise, such customizations are best shared via git.

<!--more-->

# Usage

1. fork / clone this template git repo
2. keep the master branch as a template branch
3. create a new branch for each new project you need
4. create a pandoc (markdown) document
5. run `make` anytime you need to generate PDF or DOCX

NB: you can `make clean` to remove old cruft, `make your.file.md.pdf` to skip the others, etc. See `Makefile`.

If you update your templates, you may want to merge with your project branches. I tried subtrees and submodules but meh.


# Requirements

* [pandoc](johnmacfarlane.net/pandoc/), installed via `cabal install` but your distro may provide it as a package.
* [LaTeX](http://www.xelatex.org/) (xelatex recommended), [texlive](https://www.tug.org/texlive/) is OK.
* gnu make

Depending on your customizations, you may need additional LaTeX packages, fonts, etc. CTAN FTW.


# Customizations

This git repo just provides basic templates and a workflow whie pandoc & LaTeX do the heavylifting.

You may want to change the default paper size, the language, the footer, the logo, etc. To do so:

* change your logo in `images/logo.png`
* change the `default.latex` document to your convenience
* propagate your changes to your project branches


# Tips on working with pandoc files

[Pandoc](johnmacfarlane.net/pandoc/) is basically markdown, with support for github flavored extensions and many others, such as tables, syntax highlighting, etc.

Here are some [Vim](www.vim.org) plugins I use to write my documents.

| vim                                                             | is the editor I and my colleagues use |
|-----------------------------------------------------------------|---------------------------------------|
| [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) | is awesome to create pandoc tables    |
| [vim-pandoc](https://github.com/vim-pandoc/vim-pandoc)          | syntax, generators, preview, ...      |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)           | not documentation specific            |

...and some plugin conf...

```vim
autocmd FileType markdown TableModeEnable

"pandoc syntax annoying conceal et spellcheck
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#modules#disabled = ['spell']

" make table both pandoc and github lovable
let g:table_mode_separator = '|'
let g:table_mode_corner = '|'
let g:table_mode_corner_corner = '|'
```
