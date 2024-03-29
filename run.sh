# Grupo 8
# 70179 - Manuel Alves
# 70484 - Pedro Saraiva

#!/bin/bash

rm -f *.pdf
rm -f *.fst

################### transdutores individuais ################

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos1a9.txt  > digitos1a9.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos1a9.fst | dot -Tpdf > digitos1a9.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos3a9horas.txt  > digitos3a9horas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos3a9horas.fst | dot -Tpdf > digitos3a9horas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos10a19.txt  > digitos10a19.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos10a19.fst | dot -Tpdf > digitos10a19.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  digitos20a50.txt  > digitos20a50.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt digitos20a50.fst | dot -Tpdf > digitos20a50.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  doispontos.txt  > doispontos.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt doispontos.fst | dot -Tpdf > doispontos.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  doze.txt  > doze.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt doze.fst | dot -Tpdf > doze.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  duas.txt  > duas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt duas.fst | dot -Tpdf > duas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  e.txt  > e.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt e.fst | dot -Tpdf > e.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  emeia.txt  > emeia.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt emeia.fst | dot -Tpdf > emeia.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  meiodia.txt  > meiodia.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt meiodia.fst | dot -Tpdf > meiodia.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  paraas.txt  > paraas.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt paraas.fst | dot -Tpdf > paraas.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  quinze.txt  > quinze.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt quinze.fst | dot -Tpdf > quinze.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  teste1.txt  > teste1.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt teste1.fst | dot -Tpdf > teste1.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  teste2.txt  > teste2.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt teste2.fst | dot -Tpdf > teste2.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  teste3.txt  > teste3.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt teste3.fst | dot -Tpdf > teste3.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  tresquartos.txt  > tresquartos.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt tresquartos.fst | dot -Tpdf > tresquartos.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  um.txt  > um.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt um.fst | dot -Tpdf > um.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  uma.txt  > uma.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt uma.fst | dot -Tpdf > uma.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  umquarto.txt  > umquarto.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt umquarto.fst | dot -Tpdf > umquarto.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  vinte.txt  > vinte.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt vinte.fst | dot -Tpdf > vinte.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  vinteeum.txt  > vinteeum.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt vinteeum.fst | dot -Tpdf > vinteeum.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  zero.txt  > zero.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt zero.fst | dot -Tpdf > zero.pdf

fstcompile --isymbols=data.sym.txt --osymbols=data.sym.txt  zerohoras.txt  > zerohoras.fst
fstdraw  --isymbols=data.sym.txt --osymbols=data.sym.txt zerohoras.fst | dot -Tpdf > zerohoras.pdf

#################### Compila e gera a versão gráfica do transdutor das horas ####################

####### 0 e 1 #######
fstunion zerohoras.fst uma.fst > hora0e1.fst

####### 0 a 2 #######
fstunion hora0e1.fst duas.fst > hora0a2.fst
fstrmepsilon hora0a2.fst hora0a2.fst                             # limpa os eps desnecessarios

####### 0 a 9 #######
fstunion hora0a2.fst digitos3a9horas.fst > hora0a9.fst
fstconcat zero.fst hora0a9.fst > 0a9horas.fst
fstrmepsilon 0a9horas.fst 0a9horas.fst                          # limpa os eps desnecessarios

####### 0 a 19 #######
fstunion  digitos10a19.fst meiodia.fst > digitos10a19w12.fst    # adiciona meio dia a lista 10 a 19
fstunion  digitos10a19w12.fst quinze.fst > digitos10a19w15.fst  # adiciona quinze a lista anterior
fstconcat um.fst digitos10a19w15.fst > digitos10a19w1.fst       # adiciona o primeiro digito 1_ a lista anterior
fstunion 0a9horas.fst digitos10a19w1.fst > hora0a19.fst
fstrmepsilon hora0a19.fst hora0a19.fst                          # limpa os eps desnecessarios

####### 0 a 24 #######
fstunion zero.fst vinteeum.fst > zeroe21.fst
fstrmepsilon zeroe21.fst zeroe21.fst                              # limpa os eps desnecessarios
fstconcat vinte.fst zeroe21.fst > vinte20.fst
fstunion hora0a19.fst vinte20.fst > horas.fst
fstrmepsilon horas.fst horas.fst                                  # limpa os eps desnecessarios
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt horas.fst | dot -Tpdf > horas.pdf

#################### Compila e gera a versão gráfica do transdutor dos minutos ####################

####### 0 - 9 #######
fstunion zero.fst digitos1a9.fst  > minutos0a9aux.fst             # introduz o 0 para ser estado final no caso de 00
fstconcat zero.fst minutos0a9aux.fst  > minutos0a9.fst            # zero no primeiro digito 0_

####### 20 - 59 #######
fstunion zero.fst digitos1a9.fst > digitos1a9ou0.fst                # zero no segundo digito no caso de 20 e 50
fstconcat digitos20a50.fst digitos1a9ou0.fst > minutos20a50.fst     # os restantes 9 digitos do segundo digito para numeros de 20-59
fstunion emeia.fst minutos20a50.fst > minutos20a50w30.fst           # junta os 30 minutos a lista anterior
fstunion tresquartos.fst minutos20a50w30.fst > minutos20a50w40.fst  # junta os 45 minutos a lista anterior
fstconcat e.fst minutos20a50w40.fst > minutos20a50we.fst            # adiciona o "e" antes da lista anterior

####### 0 - 59 #######
fstunion  digitos10a19.fst doze.fst > digitos10a19w12.fst         # adiciona doze a lista 10 a 19
fstunion  digitos10a19w12.fst umquarto.fst > digitos10a19w15.fst  # adiciona um quarto a lista anterior
fstconcat um.fst digitos10a19w15.fst > digitos10a19w1.fst         # adiciona o primeiro digito 1_ a lista anterior
fstconcat e.fst digitos10a19w1.fst > edigitos10a19.fst            # adiciona a letra e antes da lista anterior
fstunion edigitos10a19.fst minutos20a50we.fst > minutosaux.fst    # junta os numeros de 10-19 com os de 20-50
fstunion minutosaux.fst minutos0a9.fst > minutos.fst              # junta os valores de 0-9 aos restantes
fstrmepsilon minutos.fst minutos.fst                              # limpa os eps desnecessarios
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt minutos.fst | dot -Tpdf > minutos.pdf

#################### Compila e gera a versão gráfica do transdutor relogio ####################

fstconcat horas.fst doispontos.fst > horasdoispontos.fst          # coloca os : depois das horas
fstconcat horasdoispontos.fst minutos.fst > relogio.fst           # adiciona os minutos
fstrmepsilon relogio.fst relogio.fst                              # limpa os eps desnecessarios
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt relogio.fst | dot -Tpdf > relogio.pdf

#################### Testes aos Transfutores
fstcompose teste1.fst relogio.fst > solteste1.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt solteste1.fst | dot -Tpdf > solteste1.pdf

fstcompose teste2.fst relogio.fst > solteste2.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt solteste2.fst | dot -Tpdf > solteste2.pdf

fstinvert relogio.fst > relogioinvert.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt relogioinvert.fst | dot -Tpdf > relogioinvert.pdf
fstcompose teste3.fst relogioinvert.fst > solteste3.fst
fstdraw --isymbols=data.sym.txt --osymbols=data.sym.txt solteste3.fst | dot -Tpdf > solteste3.pdf
