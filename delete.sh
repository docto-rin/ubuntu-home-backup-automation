#!/bin/bash
source /var/ubuntu-home-backup-automation/setting.sh

if [ ! -e "${BACKUP_DIR}" ]; then
    err "Not found BACKUP_DIR"
fi

# 古いバックアップを削除
for f in "${BACKUP_DIR}"/*.tar.lzo; do
    ret=$("${PYTHON_PATH}" /var/ubuntu-home-backup-automation/delete_or_not.py -d "$f" -f "$1" -t "$2")
    if [ "${ret}" = "Delete" ]; then
        if rm -f "$f"; then
            echo "Deleted $f : $(date)"
        else
            err "Something wrong in deleting file $f : $(date)"
        fi
    fi
done

echo "Deleting old backups ended : $(date)"
