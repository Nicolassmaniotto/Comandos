function getNome(){
    IN="$1"
    arrIN=(${IN//\// })
    tamanho=${#arrIN[@]}
    echo ${arrIN[$tamanho-1]} 
}

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
function installDeb(){
    nome=$(getNome $1)
    pasta=$(getPath $1)
    tamanho=${#nome}
    tamanho2=${#arrIN[@]}
    palavra=$arrIN[$tamanho2-1]
    tipo = ".deb"
    if [palavra -eq  tipo]; then
    echo $tipo;
}

installDeb "$1"