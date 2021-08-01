#!/bin/bash

USUARIO="$1"
ARQUIVO="$2"

if [ $USUARIO != $USER ]; then
    if [ -z != $ARQUIVO ]; then
        echo "Usuário $USUARIO e arquivo $ARQUIVO"
        exit 0
    else
        echo -e "Erro!, faltou informar o nome do arquivo\n"
        echo "Sintaxe: $0 $1 <arquivo>"
        exit 1
    fi
else
    echo -e "Erro!, faltou informar usuário e arquivo\n"
    echo "Sintaxe: $0 <username> <arquivo>"
    exit 2
fi
