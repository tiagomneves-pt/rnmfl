#!/bin/bash
#WORK IN PROGRESS

NOME_CADEIRA=${PWD##*/}
NUM_ALTERACOES=0

for FICHEIRO in * 
do
	if [[ "$FICHEIRO" != "[$NOME_CADEIRA]"* ]]
	then
		mv "$FICHEIRO" "[${NOME_CADEIRA}]- ${FICHEIRO}"
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
