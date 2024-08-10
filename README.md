# Ubuntu Home Backup Automation

This project provides a set of automation scripts for regularly backing up the home directory of an Ubuntu system to an external drive.

## Overview

This project offers the following features:

- Regular backups of the home directory
- Backup automation (using cron)
- Backup organization and deletion of old backups
- Error alerts and notifications

## File Structure

- `alert.sh`: Notification script for error occurrences
- `backup.sh`: Main backup script
- `delete.sh`: Script for deleting old backups
- `delete_or_not.py`: Python script for deciding whether to delete backups
- `setting.sh`: Configuration file for backup settings
- `root_crontab.txt`: Example crontab settings for root user

## Setup

1. Clone this repository into the `/var` directory:
   ```
   sudo git clone https://github.com/yourusername/ubuntu-home-backup-automation.git /var/ubuntu-home-backup-automation
   ```

2. Edit the `setting.sh` file to configure your backup settings:
   ```
   sudo nano /var/ubuntu-home-backup-automation/setting.sh
   ```

3. Set up the root user's crontab using the content in `root_crontab.txt` as a reference:
   ```
   sudo crontab -e
   ```

## Usage

Once set up, the system will automatically perform regular backups. To manually run a backup, use the following command:

```
sudo /var/ubuntu-home-backup-automation/backup.sh
```

## Important Notes

- These scripts run as root, so please exercise caution with security.
- Ensure that the backup drive is always connected.
- Proper configuration of `alert.sh` is necessary to receive error notifications.

## License

This project is released under the [MIT License](LICENSE).

## Contributing

Please report bugs or request features through GitHub Issues. Pull requests are welcome.

## Acknowledgements

This project was inspired by and references the article [Ubuntu のホームディレクトリを外付け HDD に自動バックアップ](https://qiita.com/mr91i/items/07b827db0d10933557bf) on Qiita. We appreciate the insights and ideas shared in this article that contributed to the development of this automation project.

---

For detailed usage instructions and configuration options, please refer to the comments within each script file.
