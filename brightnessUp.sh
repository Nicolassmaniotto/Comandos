# Aumenta o brilho da tela
NUM=$(xrandr --verbose |grep "Brightness" | cut -b 14-)
result=$(awk '{print $1+$2}' <<<"${NUM} 0.1")
xrandr --output eDP-1 --brightness $result
# eDP-1 monitor