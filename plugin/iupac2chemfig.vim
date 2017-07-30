if !has('python')
    finish
endif

let s:path = resolve(expand('<sfile>:p'))

function! IUPAC2chemfig()
    python mode = "normal"
    pyfile s:path . IUPACiupac2chemfig.py
endfunc

function! IUPAC2carbon()
    python mode = "carbon"
    pyfile s:path . IUPACiupac2chemfig.py
endfunc

command! IUPAC2CARB call IUPAC2carbon()
command! IUPAC2CHMFG call IUPAC2chemfig()
