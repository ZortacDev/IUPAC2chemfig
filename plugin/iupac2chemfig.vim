if !has('python')
    finish
endif

function! IUPAC2chemfig()
    python mode = "normal"
    pyfile iupac2chemfig.py
endfunc

function! IUPAC2carbon()
    python mode = "carbon"
    pyfile iupac2chemfig.py
endfunc

command! IUPAC2CARB call IUPAC2carbon()
command! IUPAC2CHMFG call IUPAC2chemfig()
