% Project documents README
% Jérôme Andrieux
% 2014


LaTeX produces great looking documents but no one has the time and the nerves to use it.
We use markdown everywhere, since it's easy to write but you can get decent "client ready" documents from it.
Pandoc is georgeous, yet its defaults need a little customization.

NB: this document is both a README and a pandoc document example.

# Usage

1. fork / clone this template git repo
2. keep the master branch as a template branch
3. create a new branch for each new project you need
4. create a pandoc (markdown) document
5. run `make` anytime you need to generate PDF or DOCX

NB: you can `make clean` to remove old cruft, `make your.file.md.pdf` to skip the others, etc. See `Makefile`.

If you update your templates, you may want to merge with your project branches. I tried subtrees and submodules but meh.


# Requirements

* pandoc
* LaTeX (xelatex recommended)
* gnu make

I install pandoc via `cabal install` but your distro may provide it as a package.

LaTeX comes in various flavours, TeXlive is OK.


# Customization

* change your logo in `images/logo.png`
* change the `default.latex` document to your convenience


# Tips

| vim                                                             | is the editor I and my colleagues use |
|-----------------------------------------------------------------|---------------------------------------|
| [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) | is awesome to create pandoc tables    |
| [vim-pandoc](https://github.com/vim-pandoc/vim-pandoc)          | syntax, generators, preview, ...      |

