#!/bin/bash

read -p "Digite o nome da lista de telefone:" arq

sed -i 's/[0-9]*/**CENSURADO**/' $arq
