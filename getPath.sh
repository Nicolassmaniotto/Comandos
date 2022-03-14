function getPath(){
    IN="$1"
    arrIN=(${IN//\// })
    tamanho=${#IN}
    tamanho2=${#arrIN[@]}
    palavra=$arrIN[$tamanho2-1]
    tamanho3=${#palavra}
    calculo=$((tamanho2 - 1))
    i=0;
    for item in ${arrIN[@]}
    do
        if [ $i -lt $calculo ]; then
            concac+="/"$item
        fi
        i=$((i+1))
    done
    echo $concac
    # echo $IN | cut -b 
}
getPath "skdsaçl/dir/nb5/1651s/616/5s/d1.sjds"