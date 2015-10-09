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

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  umminuto.txt  > umminuto.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt  umminuto.fst | dot -Tpdf > umminuto.pdf

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

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  doispontos.txt  > doispontos.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt doispontos.fst | dot -Tpdf > doispontos.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  emeia.txt  > emeia.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt emeia.fst | dot -Tpdf > emeia.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  meiodia.txt  > meiodia.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt meiodia.fst | dot -Tpdf > meiodia.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  paraas.txt  > paraas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt paraas.fst | dot -Tpdf > paraas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  umquarto.txt  > umquarto.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt umquarto.fst | dot -Tpdf > umquarto.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  zero.txt  > zero.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt zero.fst | dot -Tpdf > zero.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos0a9.txt  > digitos0a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos0a9.fst | dot -Tpdf > digitos0a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos3a9.txt  > digitos3a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos3a9.fst | dot -Tpdf > digitos3a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  uma.txt  > uma.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt uma.fst | dot -Tpdf > uma.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  duas.txt  > duas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt duas.fst | dot -Tpdf > duas.pdf

# Compila e gera a versão gráfica do transdutor dos minutos de 0 a 19
fstconcat zero.fst digitos1a9.fst > 0a9.fst
fstunion 0a9.fst digitos10a19.fst > minutos0a19.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt minutos0a19.fst | dot -Tpdf > minutos0a19.pdf

# Compila e gera a versão gráfica do transdutor dos minutos de 20 a 59
fstconcat digitos20a50.fst digitos0a9.fst > 20a59.fst
fstunion 20a59.fst digitos10a19.fst > minutos10a59.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  minutos10a59.fst | dot -Tpdf > minutos10a59.pdf

# Compila e gera a versão gráfica do transdutor dos minutos
fstunion minutos0a19.fst minutos10a59.fst > 0a59.fst
fstconcat 0a59.fst minutos.fst > minutos0a59.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  minutos0a59.fst | dot -Tpdf > minutos0a59.pdf

# Compila e gera a versão gráfica do transdutor das horas 1 a 2
fstconcat uma.fst hora.fst > hora1.fst
fstconcat duas.fst horas.fst > hora2.fst
fstunion hora1.fst hora2.fst > hora1e2.fst 
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  hora1e2.fst | dot -Tpdf > hora1e2.pdf

# Compila e gera a versão gráfica do transdutor das horas 3 a 9
fstconcat digitos3a9.fst horas.fst > horas3a9.fst
fstunion hora1e2.fst horas3a9.fst > horas1a9.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  horas1a9.fst | dot -Tpdf > horas1a9.pdf

# Compila e gera a versão gráfica do transdutor das horas 1 a 19
fstconcat digitos10a19.fst horas.fst > horas10a19.fst
fstunion horas1a9.fst horas10a19.fst > horas1a19.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  horas1a19.fst | dot -Tpdf > horas1a19.pdf

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
