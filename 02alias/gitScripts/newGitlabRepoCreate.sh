#!/bin/bash
## use the web interface to generate api-token
## create new repo:
curl -H "Content-Type:application/json" http://192.168.XX.YY:ZZ/api/v4/projects?private_token=AAAAAAAAAAAA -d "{ \"name\": \"$1\" }"

echo " "
echo " "
echo "(1) add working folder to new repo "
echo " "
echo "git init"
echo "git remote add origin git@192.168.2.3:vlad/$1.git"
echo "git add ."
echo 'git commit -m "Initial commit"'
echo "git push -u origin master"
echo " "
echo "(2) add link to list of gits "
echo " "
echo "add link to gitLabBinds (at /proj/myGits/gitLabBinds)"
echo "ln -s `pwd` /<gitLabFolder>/$1"
