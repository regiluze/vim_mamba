try:
    import vim
 
    filename = vim.current.buffer.name
 
    f = open(filename, 'w')
    f.write('# -*- coding: utf-8 -*- \n')
    f.write('\n')
    f.write('\n')
    f.write('from doublex import *\n')
    f.write('from expects import *\n')
    f.write('from doublex_expects import *\n')
    f.write('\n')
    f.write('\n')
    f.write("with describe('describe'):\n")
    f.write("\t with context('context'):\n")
    f.write("\t \t with it('foo'):\n")
    print >>f, "\t \t \t pass \n" 
    f.close()
 
    print "HTML output written to "+filename
 
except ImportError, e:
    print "Markdown package not installed, please run: pip install markdown"

