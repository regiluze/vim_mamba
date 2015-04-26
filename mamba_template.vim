if !has('python')
        finish
endif

function! Gen_Mamba_template()
    pyfile mamba_template.py
    edit
endfunc

command! Mambat call Gen_Mamba_template()
