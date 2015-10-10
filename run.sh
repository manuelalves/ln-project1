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

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos3a9.txt  > digitos3a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos3a9.fst | dot -Tpdf > digitos3a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos3a9horas.txt  > digitos3a9horas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos3a9horas.fst | dot -Tpdf > digitos3a9horas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  uma.txt  > uma.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt uma.fst | dot -Tpdf > uma.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  duas.txt  > duas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt duas.fst | dot -Tpdf > duas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  zerohoras.txt  > zerohoras.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt zerohoras.fst | dot -Tpdf > zerohoras.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  vinte.txt  > vinte.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt vinte.fst | dot -Tpdf > vinte.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  vinteeum.txt  > vinteeum.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt vinteeum.fst | dot -Tpdf > vinteeum.pdf


#################### Compila e gera a versão gráfica do transdutor das horas ####################

####### 0 #######
fstconcat zero.fst zerohoras.fst > hora0aux.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0aux.fst | dot -Tpdf > hora0aux.pdf

####### 1 #######
fstconcat zero.fst uma.fst > hora1aux.fst
fstunion hora0aux.fst hora1aux.fst > hora0e1.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0e1.fst | dot -Tpdf > hora0e1.pdf

####### 2 #######
fstconcat zero.fst duas.fst > hora2aux.fst
fstunion hora0e1.fst hora2aux.fst > hora0a2.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0a2.fst | dot -Tpdf > hora0a2.pdf

####### 3 - 9 #######
fstconcat zero.fst digitos3a9horas.fst > hora3a9aux.fst
fstunion hora0a2.fst hora3a9aux.fst > hora0a9.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0a9.fst | dot -Tpdf > hora0a9.pdf

####### 10 - 19 #######
fstunion hora0a9.fst digitos10a19.fst > hora0a19.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0a19.fst | dot -Tpdf > hora0a19.pdf

####### 20 #######
fstunion hora0a19.fst vinte.fst > hora0a20.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0a20.fst | dot -Tpdf > hora0a20.pdf

####### 21 #######
fstunion hora0a20.fst vinteeum.fst > hora0a23.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt hora0a23.fst | dot -Tpdf > hora0a23.pdf

#################### Compila e gera a versão gráfica do transdutor dos minutos ####################

####### 0 - 9 #######
fstconcat digitos1a9.fst minutos.fst > digitos1a9aux.fst          # etiqueta minutos apos os dois digitos
fstunion zero.fst digitos1a9aux.fst  > minutos0a9aux.fst          # introduz o 0 para ser estado final no caso de 00
fstconcat zero.fst minutos0a9aux.fst  > minutos0a9.fst            # zero no primeiro digito 0_

####### 20 - 59 #######
fstunion zero.fst digitos1a9.fst > digitos1a9ou0.fst              # zero no segundo digito no caso de 20, 30, 40 e 50
fstconcat digitos20a50.fst digitos1a9ou0.fst > minutos20a50.fst   # os restantes 9 digitos do segundo digito para numeros de 20-59

####### 0 - 59 #######
fstunion digitos10a19.fst minutos20a50.fst > minutosaux.fst       # junta os numeros de 10-19 com os de 20-50
fstconcat minutosaux.fst minutos.fst > minutosfinalaux.fst        # coloca etiqueta minutos no final
fstunion minutosfinalaux.fst minutos0a9.fst > minutosfinal.fst    # Junta os valores de 0-9 aos restantes
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt minutosfinal.fst | dot -Tpdf > minutosfinal.pdf
