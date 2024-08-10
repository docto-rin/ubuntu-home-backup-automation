#!/bin/bash
source /var/ubuntu-home-backup-automation/setting.sh 

echo -e "\nstart backup.sh : `date`"
if [ ! -e $BACKUP_DIR ]; then
    err "Backup directory is not found: dirname = "$BACKUP_DIR 
fi

# バックアップ処理
echo start zip : `date` 
if [ -d $TARGET_DIR ]; then
#   echo tar --directory="${TARGET_DIR}" --use-compress-program=lzop --warning=no-file-changed -cpf ${BACKUP_DIR}/${BACKUP_FILE_NAME} ./
    tar --directory="${TARGET_DIR}" --use-compress-program=lzop --warning=no-file-changed -cpf ${BACKUP_DIR}/${BACKUP_FILE_NAME} ./
    if [ $? -eq 0 ] || [ $? -eq 1 ]; then 
        echo Backup ended : `date`
    else
        err "Something wrong in making backup files  :  `date` "
    fi
else
    err "Target directory is not found: dirname = "$TARGET_DIR
fi

