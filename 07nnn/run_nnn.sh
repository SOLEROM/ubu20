#!/bin/bash

NNN_FCOLORS='c1e2272e006033f7c6d6abc4'

export NNN_FIFO=/tmp/nnn.fifo

#export NNN_PLUG='a:imgthumb;c:imgview'
export VISUAL=./2col.sh
#nnn -a -d -e -c 


export NNN_PLUG='a:preview-tui;b:preview-tabbed'
#nnn -a -d -c -P a
nnn -a -d -P b

