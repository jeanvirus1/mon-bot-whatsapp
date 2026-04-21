#!/data/data/com.termux/files/usr/bin/bash

# Apps à couper quand batterie faible. Change avec tes apps.
APPS="com.ss.android.ugc.trill com.dts.freefireth com.google.android.youtube"

while true; do
    clear
    level=$(cat /sys/class/power_supply/battery/capacity)
    temp=$(cat /sys/class/power_supply/battery/temp | cut -c1-2)
    status=$(cat /sys/class/power_supply/battery/status)
    current=$(cat /sys/class/power_supply/battery/current_now)
    
    echo "=== ELECTRON TURBO CIDEA ==="
    echo "Batterie : $level% | $status"
    echo "Température : $temp°C"
    echo "Conso actuelle : $current uA"
    echo "------------------------"
    echo "Top 5 processus :"
    top -n 1 -b -o RES | head -n 12 | tail -n 5
    echo "------------------------"
    
    # Notif si < 20% et pas en charge
    if [ $level -lt 20 ] && [ "$status" != "Charging" ]; then
        termux-notification --title "Batterie Faible $level%" --content "Je coupe les apps gourmandes" --priority high
        for app in $APPS; do
            su -c "am force-stop $app"
        done
        echo "Apps coupées pour économiser"
    fi
    
    # Notif surchauffe > 43°C
    if [ $temp -gt 43 ]; then
        termux-notification --title "Surchauffe $temp°C" --content "TikTok/Free Fire stoppés" --priority high
        su -c "am force-stop com.ss.android.ugc.trill"
        su -c "am force-stop com.dts.freefireth"
    fi
    
    sleep 5
done
