# wifi ssid on bar

* add ssid to icon

```
/usr/share/i3xrocks/net-traffic
================================
# set net icon based on wire or wireless connection
case "$IF" in
    e*)
        NIC=${label_icon:-$(xrescat i3xrocks.label.wired )}
        INT_TYPE="C"
    ;;
    w*)
        ESSID=$(nmcli -t -f active,ssid dev wifi |  perl -n -e '/yes:(.*)/ && print $1')
        NIC=${label_icon:-$(xrescat i3xrocks.label.wifi )}"($ESSID)"
        INT_TYPE="W"
    ;;
esac

```
