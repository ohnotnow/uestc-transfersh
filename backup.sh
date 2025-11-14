#!/bin/bash

set -e -u -o pipefail

BACKUP_FILES=(
    "/path/to/stuff"
    "/specific/file.txt"
)

TIMESTAMP=$(date +%Y%m%d)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"
tar -czvf "$BACKUP_FILE" "${BACKUP_FILES[@]}"

curl -u ${HTTP_AUTH_USER:-username}:${HTTP_AUTH_PASS:-secretpassword} --upload-file "$BACKUP_FILE" "https://hostname.example.ac.uk/$BACKUP_FILE"

rm "$BACKUP_FILE"
