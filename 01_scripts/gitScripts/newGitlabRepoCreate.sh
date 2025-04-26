#!/bin/bash
## use the web interface to generate api-token
## create new repo:
curl -H "Content-Type:application/json" http://192.168.2.3:85/api/v4/projects?private_token=W84VMZ-PGyweNW3vh2qi -d "{ \"name\": \"$1\" }"

echo " "
echo " "
echo " "
echo " "
echo "git init"
echo "git remote add origin git@192.168.2.3:vlad/$1.git"
echo "git add ."
echo 'git commit -m "Initial commit"'
echo "git push -u origin master"

echo "add link to gitLabBinds (at /proj/myGits/gitLabBinds)"
echo "ln -s PATH-TO-LOCAL-FOLDER  /proj/myGits/gitLabBinds/$1"
