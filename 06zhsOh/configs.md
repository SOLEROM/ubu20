# config my zsh


* source aliases 

```
~/.zshrc
=========
...
.....

##solov
emulate sh -c 'source /data/sysadmin/00_bashrc/solov.bashrc'

```

* in case need staff only for zsh:

```
if [ `echo $0` == zsh ] ; then
...

fi
```
