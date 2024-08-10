current_filesize=`ls /mnt/ubuntu_hdd/home/ -lht | awk '(NR==2){print $5}'`

# current filesize * 15 files < 9TB --> current_filesize < 600G
if [[ ${current_filesize/G/} -gt 600 ]]; then
        echo "警告: 最新のバックアップファイルのサイズ (${current_filesize}) が 600GB を超えています。15 個のファイルの合計サイズが 9TB を超えないようにするため
には、各ファイルのサイズを 600GB 以下に抑える必要があります。なお、HDDの総容量は 10.3TBです。"
fi
