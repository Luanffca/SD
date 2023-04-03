#!/bin/bash
if [[ $# -eq 0 ]]; then
	dia=$(date +%A)
	echo "Hoje é $dia"
else
	if [[ $1 =~ ^[0-6]$ ]]; then
		case $1 in
			0) echo "O dia informado corresponde a um Domingo";;
			1) echo "O dia informado corresponde a um Segunda-feira";;
			2) echo "O dia informado corresponde a um Terça-feira";;
			3) echo "O dia informado corresponde a um Quarta-feira";;
			4) echo "O dia informado corresponde a um Quinta-feira";;
			5) echo "O dia informado corresponde a um Sexta-feira";;
			6) echo "O dia informado corresponde a um Sábado";;
		esac	
	else
		echo "O dia informado corresponde a 0 a 6"
		exit 1
	fi
fi 