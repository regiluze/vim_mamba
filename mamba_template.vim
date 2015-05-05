if !has('python')
        finish
endif

function! Gen_Mamba_template()
python << EOF
try:
    import vim

    filename = vim.current.buffer.name

    with open(filename, 'w') as f:
        f.write('# -*- coding: utf-8 -*-\n')
        f.write('\n')
        f.write('from doublex import *\n')
        f.write('from expects import *\n')
        f.write('from doublex_expects import *\n')
        f.write('\n')
        f.write('\n')
        f.write("with describe('describe'):\n")
        f.write("    with context('context'):\n")
        f.write("        with it('foo'):\n")
        f.write("            pass\n")

    print "HTML output written to "+filename

except ImportError:
    print "Markdown package not installed, please run: pip install markdown"


EOF
edit
endfunction

command! Mambat call Gen_Mamba_template()
