#import vim
import re
import commands

line = vim.current.line

def normal(str):
    vim.command("normal "+str)
    
vim.command("set paste")

try:
    iupacname = re.search('\\chemfig{(.*)}', line).group(1)
    smiles =  commands.getoutput('echo "' + iupacname + '" > /tmp/name.txt; java -jar ~/javalibs/opsin.jar /tmp/name.txt /tmp/out.txt >/dev/null 2>&1; cat /tmp/out.txt')
    if smiles != "":
        if mode == "normal":
            chemfig = commands.getoutput('mol2chemfig -of -i direct "' + smiles + '"') + '\n'
        elif mode == "carbon":
            chemfig = commands.getoutput('mol2chemfig -cof -i direct "' + smiles + '"') + '\n'
        else:
            chemfig = iupacname
        normal('cc'+line.replace(iupacname, chemfig))
    else:
        normal('cc'+line)
except AttributeError:
    normal('cc'+line)

vim.command("set nopaste")
