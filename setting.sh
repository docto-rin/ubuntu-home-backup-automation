##################################################
# バックアップ対象
TARGET_DIR=/home
# バックアップ先
BACKUP_DIR=/mnt/ubuntu_hdd/home
# バックアップ後のファイル名
BACKUP_FILE_NAME=home-`/bin/date +%Y-%m-%d_%H:%M:%S`.tar.lzo
# Pythonのパス
PYTHON_PATH=python
##################################################

function err(){
    echo $@ 1>&2
    exit 1
}
