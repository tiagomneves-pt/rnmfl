#!/bin/bash
#WORK IN PROGRESS
#Ficheiro de teste. Não utilizar fora da diretoria de teste.

NOME_CADEIRA=${PWD##*/}
FICHEIROS=$(ls)

for FICHEIRO in $FICHEIROS 
do
	if [[ "$FICHEIRO" != "[$NOME_CADEIRA]"* ]]
	then
		mv $FICHEIRO "[${NOME_CADEIRA}]- ${FICHEIRO}"
	       	echo "A mudar o nome do ficheiro \"${FICHEIRO}\" para \"[${NOME_CADEIRA}]- ${FICHEIRO}\""
	fi
done	

