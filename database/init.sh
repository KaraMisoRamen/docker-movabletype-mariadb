#!/bin/bash

/usr/bin/mysqld_safe &
sleep 5

# 初期化されていなかったら初期化

if [ ! -e /initialized ]; then
    mysql -uroot < /init.sql
fi

touch /initialized

find /var/lib/mysql/ -maxdepth 1 -type f -name *.err | xargs -Ifile tail -f file

