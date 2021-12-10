#!/bin/bash

read_env () {
    echo $(grep -v '^#' .env | grep -e "$1" | sed -e 's/.*=//')
}

base_dir=$(read_env "BASE_DIR")

while read remote; do
    fusermount -u $base_dir/gdrive-$remote/
    echo "fusermount -u $base_dir/gdrive-$remote/ successful"
done < 'remote_name.txt'
