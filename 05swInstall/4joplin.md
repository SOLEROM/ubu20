# joplin

* https://joplinapp.org/

## install

```
gui:
====
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh

will be at:
	/home/solov/.joplin/Joplin.AppImage


tui:
====

(1)Node.js v8.x:
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

(2)
NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin

```

* install firefox addition to make page saving to joplin

## vesrion path

```
~/.config/joplin			//tui app

~/.config/joplin-desktop		//gui app
```

## db

link db to be the same

```
~/.config/joplin$ ln -s ../joplin-desktop/database.sqlite database.sqlite
```

