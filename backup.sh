#!/bin/bash

rm -R /backup/*

echo "backing up /app"
cp -Rp /app /backup
tar -cpzf /backup/app.tar.gz /app

echo "backing up /etc/mysql"
tar -cpzf /backup/etc-mysql.tar.gz /etc/mysql
mkdir /backup/etc
cp -Rp /etc/mysql /backup/etc

echo "backing up /var/lib/mysql"
tar -cpzf /backup/var-lib-mysql.tar.gz /var/lib/mysql
mkdir /backup/var
mkdir /backup/var/lib
cp -Rp /var/lib/mysql /backup/var/lib
