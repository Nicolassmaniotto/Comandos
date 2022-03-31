# [Desktop Entry]
# Name=Stacer
# Exec=stacer
# Comment=Linux System Optimizer and Monitoring
# Icon=stacer
# Type=Application
# Terminal=false
# Categories=Utility;
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
function makeAtalho(){
    nome=$(getNome "$1")
    pasta=$(getPath "$1")
    atalho="[Desktop Entry]
    Name=$nome
    Exec=xdg-open $1
    Comment=criado 
    Icon=$nome
    Type=Application
    Terminal=false
    Categories=Utility;"
    echo $atalho
    echo "$atalho" > $nome.desktop

}

makeAtalho "$1"