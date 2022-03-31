function getNome(){
    IN="$1"
    arrIN=(${IN//\// })
    tamanho=${#arrIN[@]}
    echo ${arrIN[$tamanho-1]}
}
getNome "$1"