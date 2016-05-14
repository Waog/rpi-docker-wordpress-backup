#!/bin/bash

rm -R /backup/*

echo "backing up /app"
tar -cpzf /backup/app.tar.gz /app

echo "backing up /etc/mysql"
tar -cpzf /backup/etc-mysql.tar.gz /etc/mysql

echo "backing up /var/lib/mysql"
tar -cpzf /backup/var-lib-mysql.tar.gz /var/lib/mysql
