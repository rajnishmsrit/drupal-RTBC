#!/bin/bash

# Clean up user and database
mysql -u root -proot -e "DROP USER IF EXISTS '$1'@'localhost'"
mysql -u root -proot -e "DROP DATABASE IF EXISTS $1"

# Create database, user, grant privileges
mysql -u root -proot -e "create database $1"
mysql -u root -proot -e "create user '$1'@localhost identified by '$1'"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON $1.* TO '$1'@localhost WITH GRANT OPTION"
