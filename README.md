This plugin allows you to convert IUPAC names for chemical compounds to LaTeX chemfig structures.

# Prerequisites

This plugin has some requirements/dependencies:
- vim compiled with Python 2.7
- Java
- The OPSIN 2.3.0 JAR with dependencies in `~/javalibs/opsin.jar`
- mol2chemfig available in your PATH and its LaTeX macros available in you TeX source file

# Usage

IUPAC2chemfig defines two commands:
- `:IUPAC2CHMFG`, which converts to normal skeleton formulae
- `:IUPAC2CARB`, which displays the carbons

To use IUPAC2chemfig simply run one of the above commands while on a line containing `\chemfig{[IUPAC-Name]}`. The IUPAC-Name will then be replaced by the appropriate chemfig representation generated by mol2chemfig.

For ease of use I recommend binding the commands to some keys like this (in your `.vimrc`):
```
nnoremap <leader>is :IUPAC2CHMFG
nnoremap <leader>ic :IUPAC2CARB
```
