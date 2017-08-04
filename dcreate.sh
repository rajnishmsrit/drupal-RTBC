#!/bin/bash
drush dl drupal-7.x --drupal-project-rename=$1
cd $1
drush site-install standard --db-url='mysql://$1:$1@localhost/$1' --site-name=Welcome --account-name=admin --account-pass=$1

