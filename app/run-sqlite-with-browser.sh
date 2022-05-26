#!/bin/bash -x

SQLITE_DB_FILE=${DB_FILE:-${HOME}/data/database.db}

if [ ! -s ${DB_FILE} ]; then 
    echo "" > ${HOME}/database.db
fi

SQLITE_WEB_PORT=${DB_PORT:-8080}
SQLITE_WEB_PASSWORD=${SQLITE_WEB_PASSWORD:-""}
FLAGS=""

if [ "${SQLITE_WEB_PASSWORD}" != "" ]; then
    FLAGS=FLAGS" -P ${SQLITE_WEB_PASSWORD}"
fi
sqlite_web -H 0.0.0.0 -p ${SQLITE_WEB_PORT} ${FLAGS} ${SQLITE_DB_FILE}

