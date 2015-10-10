#!/bin/bash

rm -f *.pdf
rm -f *.fst

################### letras ################
#
# Compila e gera a versão gráfica do transdutor que tem "potato"
fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  umaeduashoras.txt  > umaeduashoras.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt  umaeduashoras.fst | dot -Tpdf > umaeduashoras.pdf

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

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos3a9.txt  > digitos3a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos3a9.fst | dot -Tpdf > digitos3a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  uma.txt  > uma.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt uma.fst | dot -Tpdf > uma.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  duas.txt  > duas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt duas.fst | dot -Tpdf > duas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  zerohoras.txt  > zerohoras.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt zerohoras.fst | dot -Tpdf > zerohoras.pdf

# Compila e gera a versão gráfica do transdutor das horas 1 a 2
fstunion uma.fst duas.fst > hora1e2.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  hora1e2.fst | dot -Tpdf > hora1e2.pdf

# Compila e gera a versão gráfica do transdutor das horas 3 a 9
fstunion hora1e2.fst digitos3a9.fst > horas1a9.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  horas1a9.fst | dot -Tpdf > horas1a9.pdf

# Compila e gera a versão gráfica do transdutor das horas 1 a 19
fstunion horas1a9.fst digitos10a19.fst > horas1a19.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  horas1a19.fst | dot -Tpdf > horas1a19.pdf

# Compila e gera a versão gráfica do transdutor das horas 0 a 19
fstunion zerohoras.fst horas1a19.fst > horas0a19.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt  horas0a19.fst | dot -Tpdf > horas0a19.pdf

#################### Compila e gera a versão gráfica do transdutor dos minutos ####################

####### 0 - 9 #######
fstunion zero.fst digitos1a9.fst  > minutos0a9aux.fst          # introduz o 0 para ser estado final no caso de 00
fstconcat zero.fst minutos0a9aux.fst  > minutos0a9.fst         # zero no primeiro digito 0_

####### 20 - 59 #######
fstunion zero.fst digitos1a9.fst > digitos1a9ou0.fst              # zero no segundo digito no caso de 20, 30, 40 e 50
fstconcat digitos20a50.fst digitos1a9ou0.fst > minutos20a50.fst   # os restantes 9 digitos do segundo digito para numeros de 20-59

####### 0 - 59 #######
fstunion digitos10a19.fst minutos20a50.fst > minutosaux.fst       # junta os numeros de 10-19 com os de 20-50
fstunion minutosaux.fst minutos0a9.fst > minutosfinal.fst    # Junta os valores de 0-9 aos restantes
fstrmepsilon minutosfinal.fst minutosfinal.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt minutosfinal.fst | dot -Tpdf > minutosfinal.pdf
