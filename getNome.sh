function getNome(){
    IN="$1"
    arrIN=(${IN//\// })
    tamanho=${#arrIN[@]}
    echo ${arrIN[$tamanho-1]} 
}
getNome "skdsaçl/dir/nb5/1651s/616/5s/d1.sjds"