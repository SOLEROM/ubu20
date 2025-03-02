# About


## Install

* build tools from src ; see [here](nnnFromSrc/readme.md)


## run

```
/usr/local/bin/nn
=================

#!/bin/bash
NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_FIFO=/tmp/nnn.fifo

###???
export VISUAL=./2col.sh

export NNN_PLUG='a:preview-tui;b:preview-tabbed'
nnn -a -d -P b
```


## configs


### tabbed larger font

```
~/.config/nnn/plugins/preview-tabbed
====================================

if which xterm >/dev/null 2>&1 ; then
##    TERMINAL="xterm -into"
    TERMINAL="xterm  -fa 'Monospace' -fs 14 -into"

```




