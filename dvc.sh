#!/bin/bash


git init
dvc init
git add .dvc .dvcignore
git commit -m "Initialize DVC"

dvc add iris.csv
git add iris.csv.dvc .gitignore
git commit -m "Add CSV file and track it with DVC"


dvc remote add -d myremote gdrive:


dvc push
git remote add origin https:https://github.com/barak47/task6
git branch -M main
git push -u origin main
