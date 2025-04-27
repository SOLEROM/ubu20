#!/bin/bash
myShell=$1

#################################################################
#######################  varibels ###############################
sys="/data/sysadmin"
SYSADMIN=$sys
bashRoot="$sys/00_bashrc"
bashScripts="$sys/01_scripts"
bashColor="$bashRoot/bashrc_colors"
bashSolov="$bashRoot/solov.bashrc"
helpRoot="$sys/02_help"

#################################################################
#######################  folders  ###############################
data="/data"
proj="/proj"
myGits="/data/myGits"
gitRoot="$myGits"
ubu="$sys/ubu20"
tools="$sys/local"

#################################################################
#######################  projects ###############################
alias data='cc; cd $data; tit "data" ; a '
alias tmp30='cc; cd $data/tmp30 ; tit "tmp30" '
alias tiny='cd $data/tinyai ; source $data/tinyai/.alias ; tit "tiny" '
alias solai='cd $data/solai  ; source $data/solai/sys/aliases ; tit "sol-ai" '



#################################################################
#######################  PATH  ##################################
PATH=$PATH:$HOME/.vim/plugin
export EDITOR='vim'

#################################################################
######################## general ################################
alias 88="ping 8.8.8.8"
alias space='df -h |head -1 ; df -h | head -4 | tail -1 ;df -h | grep data'
alias realias='source $bashSolov'
alias rr=realias
alias vialias='sudo vi $bashSolov ; realias'
alias vimrc='vi ~/.vimrc'
alias mkcd="mkdir $1 \; cd $1 "
alias hyber='pm-hibernate'
alias firefox2="ulimit -Sv 700000 && firefox"
alias ee=eog
alias keySetEng="gsettings set org.gnome.desktop.input-sources current 0"
alias keySetHeb="gsettings set org.gnome.desktop.input-sources current 1"
alias ss="sleep 1 ; xset -display :0 dpms force off"



#################################################################
#######################  system  ################################
alias sys='cc ; cd $sys ; tit "sysadmin" ; a'
alias scr='cd $bashScripts; clear ; tit "sysadmin-scripts" '

#################################################################
#######################  console  ###############################
alias cc='clear -x'
alias xx='exit'

#################################################################
######################## consoles  ##############################
# nnn
alias nn="$sys//03_ubu18/07nnn/run_nnn.sh"
# export NNN_BMS='g:/proj/myGits;'
# alias nn="nnn"
# tmux
alias tmux_vialias_tmux='vi $bashRoot/tmux.bashrc'
alias tmux_source='source $bashRoot/tmux.bashrc'

#################################################################
######################## myScripts  #############################
alias ll="$bashScripts/maps/mapls.sh "
tasks_script="$bashScripts/tasks/projList.source"
alias pp='source $tasks_script /data/.taskit'
alias ppe='[ -f .taskit ] && vi .taskit || vi /data/.taskit'

#################################################################
######################## clipboard  #############################
function showImgFunction() { eog $1 ; } 
alias img="showImgFunction $1"
function clip2file() { echo saveImgTo=./$1.png ; xclip -selection clipboard -t image/png -o > $1.png ;}
###alias clip2file="saveImgToFile $1"
#function clip2file() { saveImgToFile $1 ;}
#function clip400() { saveImgToFile $1 ; convert $1.png -resize 400 $1.png}
alias c2f=clip2file


#################################################################
######################## tops  ##################################
alias topMem=' free -h ;echo " "  ;ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
alias topmem=topMem
alias mm=topMem
## for 5 sec
alias topCpu="timeout 5 top -b -d 1 -c | awk '\$1 ~ /^[0-9]+$/ && \$9>70 {print \"Process ID: \" \$1, \"CPU Usage: \" \$9 \"%\", \"Command: \" substr(\$0, index(\$0,\$12))}'"
alias tt=topCpu

#################################################################
######################## PS1 ####################################
PS1CLEAN=$PS1
SPACE=main
if [[ $myShell == "bash" ]] ; then
	#colorize
	source $bashColor
	if [ `whoami` == root ]
	then
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtred\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
	else
	PS1="($SPACE)\[$txtblu\]\[\e]0;$tit\a\]\[$txtylw\]${debian_chroot:+($debian_chroot)}\u@\[$txtblu\]\h:\w\$\[$txtrst\] "
	fi
	alias ps1sht='export PROMPT_DIRTRIM=1'
	alias ps1wht='PS1="\[$txtwht\]\[\e]0;\u@\h: \w\a\]\[$txtwht\]${debian_chroot:+($debian_chroot)}\u@\[$txtwht\]\h:\w\$\[$txtrst\] "'
  alias tit='source $bashScripts/shell/tit.sh $1'
fi

if [[ $myShell == "zsh" ]] ; then
# In ZSH, you need to create an alias using a function to support parameters.
function tit() { source $bashScripts/shell/titZSH.sh $1 ;}
PS1="($SPACE)$PS1CLEAN"
fi


#################################################################
######################## help    ################################
alias h='cc; cat $helpRoot/welcome'
alias hh='cc; cd $helpRoot ; ls '
alias a='cc ; if [ -f ./readme.md ]; then cat ./readme.md ; else cat ./README.md ; fi '
alias aa='vi ./readme.md ; cc ; cat ./readme.md '

alias	h.sys='clear ; cat $sys/readme.md'
alias	h.data='clear ; cat /data/readme.md'

alias	h.keys='clear ; cat $helpRoot/h_keys'
alias kk=h.keys
alias h.alias='clear ; cat $helpRoot/h_alias'
alias aliash=h.alias

alias	h.km='clear ; cat $helpRoot/h_km'
alias	h.proj='clear ; cat $helpRoot/h_proj'
alias	h.qemu='clear ; cat $helpRoot/h_qemu'
alias	h.rootfs='clear ; cat $helpRoot/h_rootfs'
alias	h.vms='clear ; cat $helpRoot/h_vms'
alias	h.vim='clear ; cat $helpRoot/h_vim'
alias	h.vicode='less $helpRoot/h_vicode'
alias	h.tmux='clear ; cat $helpRoot/h_tmux'
alias h.kdev='clear ; cat $helpRoot/h_kdev'
alias h.git='clear ; cat $helpRoot/h_git'
alias h.kernel='clear ; cat $helpRoot/h_kernel'


#################################################################
######################## SERVICES ###############################
alias nfson='service nfs-kernel-server restart;echo exported: ; exportfs'
alias nmres='service network-manager restart'
alias nmoff='service network-manager stop'



#################################################################
######################## REGOLITH ###############################
## go to script folder
alias reg-conf='cd  ~/.config/regolith'
alias reg-script='cd $ubu/00RegolithI3/scripts'
alias reg-name="vi +55 ~/.config/regolith/i3/config ; i3-msg reload"
## rename shell
function i3-name() { $ubu/00RegolithI3/scripts/wrsp_changeCurName.sh $1 ; }
alias name="i3-name"
## refresh
alias reg-fresh="regolith-look refresh"
alias reg-reload="i3-msg reload"
alias wname='$ubu/00RegolithI3/scripts/multiScreen/thisName.sh'
alias ll0='$ubu/00RegolithI3/scripts/multiScreen/scrLay0.sh'
alias ll1='$ubu/00RegolithI3/scripts/multiScreen/scrLay1.sh'
alias ll2='$ubu/00RegolithI3/scripts/multiScreen/scrLay2.sh'


#################################################################
######################## 3d       ###############################
alias 3d='cd $myGits/3ddd; cc ; tit "3d"'
alias 3d_cura=cura
alias freecad="$sys/soft/cad/fromSrc/freecad-source/freecad-build/bin/FreeCAD"
alias 3d_cube="/data/3Dprint/spaceBall/libspnav-0.2.3/examples/cube/cube"
alias 3d_resball="sudo xhost + ; sudo /etc/init.d/spacenavd restart"

#################################################################
######################## ENC FLD  ###############################
alias mypass="gnome-encfs-manager mount $sys//infraMapENC ; cd /home/solov/Encfs/infraMapENC ; cc ; ls "



#################################################################
######################## /proj    ###############################
#################################################################
# alias proj='cc ; cd $proj ; tit "proj" ; h.proj '
# #archives
# alias training_archive='clear ; cat $proj/archive/training_map_srv_local.tree'
# ###projects:
# alias kernel='cc; cd /proj/theKernel ; source alias ; tit "theKernel" '


#################################################################
############### kernel   ########################################
#################################################################
#alias kernel='cd /data/solov/theKernel; clear ; source alias '
#stapDir="/data/solov/theKernel/systemTap/"
#export stapDir
#alias systap='source /data/solov/theKernel/systemTap/aliases.sh; '
#alias 430='cd /data/solov/theKernel/linFun430; clear '
#alias runbox='cd /data/solov/theKernel/linFun430/kerOrg/linux-4.9.16/runBox/; clear '
#alias kdbg='cd /data/kDebug; source .kdbg'

#################################################################
#################### HW  ########################################
alias mini0='minicom -wD /dev/ttyUSB0'
alias mini1='minicom -wD /dev/ttyUSB1'


#################################################################
#################### wifi #######################################
#alias wifiDev='source /sysadmin/wifiDev/bashrc'
#alias wifiDev_help='cd /sysadmin/wifiDev; clear; cat man.txt'
#alias wiscan='/sysadmin/scripts/./wiscan.sh'
alias publicIP="wget -qO- http://ipecho.net/plain ; echo"



#################################################################
############### local programs  #################################
#################################################################
### tor
#alias torbr='cd $tools/tor/tor-browser_en-US; ./start-tor-browser.desktop'
#alias tornt='netstat -tanp | grep tor'
### notes
alias obsidian="$sys/local/brainStorm/Obsidian-1.6.7.AppImage"
alias oo=obsidian
### nany
alias nany="$tools/firefoxNANY/firefox/firefox --no-remote -P 1>/dev/null 2>/dev/null & "
### jupyter
alias jlab="jupyter lab"
### crypto
alias ledger="$tools/ledger-live-desktop-2.37.1-linux-x86_64.AppImage"



#################################################################
###############   GIT    ########################################
#################################################################
## add ssh keys to each shell //TODO:dontLIKE fix
#killall ssh-agent
alias git.hub.key="ssh-add $sys//10_gitKeys/gitKey_private_github 1>/dev/null 2>/dev/null"
alias git.lab.key="ssh-add $sys//10_gitKeys/gitKey_private_gitlab 1>/dev/null 2>/dev/null"
alias git.vzsolov="ssh-add /data/vlad/zinaBLOGS/keys/tripRepo_ 1>/dev/null 2>/dev/null"

alias git.sol.key="killall ssh-agent; git.hub.key  ; ssh-add -l"
alias git.keys="ssh-add -l"

alias gitstat="git status -s"

alias gitall="$bashScripts/gitScripts/statusOnAll.sh $gitRoot"

gitup() {
  # Check if current directory is inside a git repository
  if ! git rev-parse --is-inside-work-tree &> /dev/null; then
    echo "Error: Not inside a Git repository."
    return 1
  fi
  # commit
  local message="${1:-auto update}"
  git add .
  git commit -m "$message"
  git push
}

alias gitorphen="bash $bashScripts/gitScripts/gitBookOrpRunner.sh ."

alias gitsrc="git config --get remote.origin.url"

alias gitFromMain="echo pls run: git pull origin main"

### SOLEROM
alias mygit='clear; cd $gitRoot ; git.sol.key; tit "my-gits" '
alias git.ls="curl -s  https://api.github.com/users/solerom/repos | grep -o 'git@[^\"]*' "


# #################################################################
# ############### gitlab :: lab  ##################################
# #################################################################
# alias mylab='cc;cd /proj/myGits/gitLabBinds; tit "gitlabs-linked-repos" '
# alias lab.ls="gitlab project list"
# alias lab.new="$bashScripts/gitScripts/newGitlabRepoCreate.sh $1"


#################################################################
#################### dockers ####################################
alias dok_ps='sudo docker ps'
alias dok_ls='docker container ls -a'
alias dok_limits="$bashScripts/limits/getLimits_unAutor.sh"

#################################################################
######################## code    ################################
alias vv='cscope -R'


