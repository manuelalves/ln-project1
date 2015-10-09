#!/bin/bash

rm -f *.pdf
rm -f *.fst

################### letras ################
#
# Compila e gera a versão gráfica do transdutor que tem "potato"
fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  umaeduashoras.txt  > umaeduashoras.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt  umaeduashoras.fst | dot -Tpdf > umaeduashoras.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  minutos.txt  > minutos.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt  minutos.fst | dot -Tpdf > minutos.pdf


################### Tradutores de tradução ################
#
# Compila e gera a versão gráfica do transdutor que traduz letra a letra
#fstcompile  --isymbols=letras.sym --osymbols=letras.sym  trad.txt > trad.fst
#fstdraw --isymbols=letras.sym --osymbols=letras.sym  trad.fst | dot -Tpdf > trad.pdf


################### Testa os tradutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
#fstcompose potato.fst trad.fst > batata.fst
#fstdraw --isymbols=letras.sym --osymbols=letras.sym  batata.fst | dot -Tpdf > batata.pdf
