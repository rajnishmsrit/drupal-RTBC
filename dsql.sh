#!/bin/bash

mysql -u root -proot -e "create database $1"
mysql -u root -proot -e "create user '$1'@localhost identified by '$1'"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON $1.* TO '$1'@localhost WITH GRANT OPTION"
