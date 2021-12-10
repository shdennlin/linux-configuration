#!/bin/bash

ping -c1 google.com
if [ $? -ne 0 ]; then
    echo "ERROR connect network, waiting for auto restart"
    exit 2
fi

read_env () {
    echo $(grep -v '^#' .env | grep -e "$1" | sed -e 's/.*=//')
}

base_dir=$(read_env "BASE_DIR")

while read remote; do
    mkdir -pv /home/shdennlin/gdrive-$remote/
    command="rclone mount --daemon $remote: $HOME/gdrive-$remote/"
    output=$(eval "$command" |& cat)

    echo $command
    echo $output
    echo $output |& grep -q "403"
    if [ $? -eq 0 ]; then
        echo "ERROR with 403, waiting for auto restart"
        exit 1
    fi
    echo "mount $remote successful"
done < 'remote_name.txt'
