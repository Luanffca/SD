#!/bin/bash
if [ $# - ne 2 ]; then
    echo "Uso: $0 <extensão_original> <nova_extensão>"
    exit 1
fi

if [ "${1:0:1}" != "." ]; then
    echo "A extensão original deve começar com um ponto"
    exit 1
fi

count=0

for arquivo in *"$1"; do
    novo_nome="$(basename "$arquivo" "$1")$2"
    echo "$arquivo => $novo_nome"
    mv "$arquivo" "$novo_nome"
    count=$((count+1))
done

if [ $count -eq 0]; then
    echo "Nenhum arquivo com a extensão $1 encontrado"
else 
    echo "arquivo alterados"
fi