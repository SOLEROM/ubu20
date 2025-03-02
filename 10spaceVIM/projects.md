# project manager

* Project manager commands start with SPC + p
* When open a file, SpaceVim will change current directory to the project root directory which contains 

```
[options]
    project_rooter_patterns = ['.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

```

##

```
SPC p ' 	open a shell in project’s root (need the shell layer + fuzzy)
SPC p f 	find files in current project
SPC p / 	fuzzy search for text in current project
SPC p k 	kill all buffers of current project
SPC p p 	list all projects
```
