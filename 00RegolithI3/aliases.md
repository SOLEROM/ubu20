# aliases

* define $SYSADMIN on main bashrc
* copy script from local repo to $SYSADMIN/00RegolithI3/scripts

```

#################################################################
######################## REGOLITH ###############################
#################################################################
## go to script folder
alias reg-conf='cd  ~/.config/regolith'
alias reg-script='cd $SYSADMIN/ubu20/00RegolithI3/scripts'
alias reg-name="vi +55 ~/.config/regolith/i3/config ; i3-msg reload" 
## rename shell
function i3-name() { $SYSADMIN/ubu20/00RegolithI3/scripts/wrsp_changeCurName.sh $1 ; }
alias name="i3-name"
## refresh
alias reg-fresh="regolith-look refresh"
alias reg-reload="i3-msg reload"

```