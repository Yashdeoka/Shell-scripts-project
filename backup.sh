#!/bin/bash



<< readme

this scripts takes backup og given directory
usage:
./backup.sh <path of directory> <path of backup dir>
readme

source_dir=$1
target_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir="${target_dir}/backup_${timestamp}"

function create_backup {


zip -r "${backup_dir}.zip"  "${source_dir}" > /dev/null

if [ $? -eq 0 ]; then
        echo "Backup created successfully"
else
        echo "backup was not performed for $timestamp"
fi
}

function perform_rotation {
        backups=($(ls -t "$target_dir/backup_"*.zip))

        if [ "${#backups[@]}" -gt 5 ]; then
                backups_to_remove=("${backups[@]:5}")
                for backup in "${backups_to_remove[@]}";
                do
                        rm "$backup"

                done
        fi



}

create_backup

perform_rotation
