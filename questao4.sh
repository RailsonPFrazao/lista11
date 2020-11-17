#!/bin/bash

read -p "Digite o arquivo com os cpf's a serem ordenados:" arq

alt=$(sed 's/\(.\{3\}\)\(.\{3\}\)\(.\{3\}\)/\1.\2.\3-/g' $arq) && echo $alt > $arq
