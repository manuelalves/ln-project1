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

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  minuto.txt  > minuto.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt  minuto.fst | dot -Tpdf > minuto.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  hora.txt  > hora.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt hora.fst | dot -Tpdf > hora.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  horas.txt  > horas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt horas.fst | dot -Tpdf > horas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos1a9.txt  > digitos1a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos1a9.fst | dot -Tpdf > digitos1a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos10a19.txt  > digitos10a19.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos10a19.fst | dot -Tpdf > digitos10a19.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos20a50.txt  > digitos20a50.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos20a50.fst | dot -Tpdf > digitos20a50.pdf

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
