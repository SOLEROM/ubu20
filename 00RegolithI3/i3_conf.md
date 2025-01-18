# 


## move wrk with arrows

```
/home/solov/.config/regolith/i3/config
======================================
## Navigate // Next Workspace // <><Alt> → ##
#bindsym $mod+$alt+Right workspace next
bindsym Ctrl+$alt+Right workspace next
## Navigate // Previous Workspace // <><Alt> ← ##
#bindsym $mod+$alt+Left workspace prev
bindsym Ctrl+$alt+Left workspace prev
```


## new wrksp

```
/home/solov/.config/regolith/i3/config
======================================
# open new wrksp with win+insert
bindsym $mod+Insert exec --no-startup-id i3-msg workspace $(i3-msg -t get_workspaces | jq 'map(.num) | max | .+1')

```


## move between windows in workspaces

```
/home/solov/.config/regolith/i3/config
======================================
# jump betw windows in wrksp
bindsym $alt+Tab focus right

```

## folow focous with mouse

```
/home/solov/.config/regolith/i3/config
======================================
set_from_resource $i3-wm.gaps.focus_follows_mouse i3-wm.gaps.focus_follows_mouse yes
```


## workspaces title and icons

* choose icon

```
> gucharmap
	common
	select icon and copy	
```

* set:

```
/etc/regolith/styles/lascaille/i3-wm
====================================

change from:

#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) INDEX:<span font_desc=FONT> INDEX </span>

to:

#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH)


```

```
.config/regolith/i3/config
==========================

set_from_resource $ws1  i3-wm.workspace.01.name "1 1.surf"


```

* reload : (( winkey  + ctrl +  r ))

