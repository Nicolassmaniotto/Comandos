function up(){
  amixer -D pulse sset Master $1%+
}

function down(){
  amixer -D pulse sset Master $1%-
}

function control(){
  if [ $1 = 'up' ]; then
    up $2
  else [$1 = 'down'];
    down $2
    fi
}
if [ $2>0 ]; then
    control $1 $2
else
    control $1 5
fi
