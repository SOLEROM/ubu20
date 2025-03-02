# install

```
sudo add-apt-repository ppa:linuxuprising/guake 
sudo apt update
sudo apt install guake
```

## run on boot

```
sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
```


## fix close

```
sudo apt install libutempter0
sudo pkill guake
```

