#!/bin/sh

now=$(date +"%Y-%m-%d_%H-%M-%S")
filename="/backup/${MYSQL_DATABASE}_${now}.sql"

/usr/bin/mysqldump --opt -h ${MYSQL_HOST} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} > ${filename}

echo "Successfully dumped to ${filename}"
