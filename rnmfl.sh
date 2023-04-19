#!/bin/bash
#rnmfl v1.0 
#NÃO UTILIZAR FORA DA DIRETORIA DE TESTE
NOME_CADEIRA=${PWD##*/}
FICHEIROS=$(ls)

for FICHEIRO in $FICHEIROS 
do
	if [[ "$FICHEIRO" != "[$NOME_CADEIRA]"* ]]
	then echo "A mudar o nome do ficheiro \"${FICHEIRO}\" para \"[${NOME_CADEIRA}] - ${FICHEIRO}\""
	fi
done	

