#!/bin/bash

read -p "Digite o arquivo:" arq

sed 's_\<\(ht\|f\)tp://[^ ]*_<a href="&">&</a>_' $arq
