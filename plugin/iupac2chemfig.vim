if !has('python')
    finish
endif

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':r') . '.py'

function! IUPAC2chemfig()
    python mode = "normal"
    execute 'pyfile ' . s:path
endfunc

function! IUPAC2carbon()
    python mode = "carbon"
    execute 'pyfile ' . s:path
endfunc

command! IUPAC2CARB call IUPAC2carbon()
command! IUPAC2CHMFG call IUPAC2chemfig()
