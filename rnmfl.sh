#!/bin/bash
#WORK IN PROGRESS
#Ficheiro de teste. Não utilizar fora da diretoria de teste.

NOME_CADEIRA=${PWD##*/}
FICHEIROS=$(ls)
NUM_ALTERACOES=0

for FICHEIRO in $FICHEIROS 
do
	if [[ "$FICHEIRO" != "[$NOME_CADEIRA]"* ]]
	then
		mv $FICHEIRO "[${NOME_CADEIRA}]- ${FICHEIRO}"
	       	echo "A mudar o nome do ficheiro \"${FICHEIRO}\" para \"[${NOME_CADEIRA}]- ${FICHEIRO}\""
		((NUM_ALTERACOES++))
	fi
done	

if ((NUM_ALTERACOES != 0))
then 
	printf "Foram actualizados $NUM_ALTERACOES ficheiros."
	exit 0
fi

printf "Nenhum ficheiro modificado."
