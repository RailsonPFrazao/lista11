#!/bin/bash

read -p "Escolha o arquivo a ser alterado:" arq

read -p "Escolha entre as opções a- remove todas as letras do arquivo, b- remove todos os digitos do arquivo, c- remove todos os carcteres que não são nem letras nem dígitos de um arquivo:" op

[ "$op" = "a" ] && val=$(sed 's/[a-zA-Z]//g' $arq) && echo $val > $arq

[ "$op" = "b" ] && val=$(sed 's/[0-9]//g' $arq) && echo $val > $arq

[ "$op" = "c" ] && val=$(sed 's/[[:punct:]]//g' $arq) && echo $val > $arq
