# calendar on clock click

```
/usr/share/i3xrocks/time 
=========================
if [ ! -z "$button" ]; then
##    /usr/bin/i3-msg -q exec /usr/bin/gnome-control-center datetime
    /usr/bin/i3-msg -q exec  "/usr/bin/zenity --calendar"

fi
```
