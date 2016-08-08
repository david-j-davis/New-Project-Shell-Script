#!/bin/bash

#My shell script for getting your project started faster

echo "Hello YOURNAME, what sort of project do you want to start?"
printf " 1) wp (Wordpress) \n 2) ang (Angular) \n 3) angExp (Angular w/ Express) \n 4) exp (Express) \n 4) html \n:"
read PROJECT_TYPE
echo "Where would you like this project folder placed? (ie. sites, Documents)"
read ROOT_PATH
echo "Folder name?"
read FOLDER_NAME
echo "Ok I will create you a folder at" /Users/YOURNAME/$ROOT_PATH/$FOLDER_NAME

## make directory in specified path
cd /Users/YOURNAME/$ROOT_PATH/
mkdir $FOLDER_NAME
cd $FOLDER_NAME

## clone git project into directory
case $PROJECT_TYPE in
  "wp")
  curl -O https://wordpress.org/latest.zip
  unzip latest.zip
  mv wordpress site
  rm latest.zip
  cd site
  rm -rf wp-content
  git init
  git pull https://github.com/david-j-davis/blank_wp_dystrick_theme.git
  atom .
  ;;
  "ang")
  git init
  git pull https://github.com/angular/angular-seed.git
  atom .
  ;;
  "angExp")
  git init
  git pull https://github.com/btford/angular-express-seed.git
  atom .
  ;;
  "exp")
  git init
  git pull https://github.com/meanie/express-seed.git
  atom .
  ;;
  "html")
  git init
  git pull https://github.com/david-j-davis/html5-project-boiler-pug-bootstrap-node-sass.git
  atom .
  ;;
esac
