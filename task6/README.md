# DevOps Task 6 – File Compression & Backup

## Tools Used
- tar
- gzip
- cron
- rsync (reference)

## What I Did
- Created sample data directories
- Compressed files using tar + gzip
- Automated backups using a shell script
- Scheduled daily backup using cron
- Verified backup integrity

Command: 
mkdir -p ~/task6/data/{logs,configs,app}
ilotpal@CyberNikkY:~/task6/data$ echo "log entry" > ~/task6/data/logs/app.log
ilotpal@CyberNikkY:~/task6/data$ echo "db_pass=select" > ~/task6/data/configs/db.conf
ilotpal@CyberNikkY:~/task6/data$ echo "hello DevOps Engineer" > ~/task6/data/app/main.txt

ilotpal@CyberNikkY:~$ tree ~/task6
/home/ilotpal/task6
└── data
    ├── app
    │   └── main.txt
    ├── configs
    │   └── db.conf
    └── logs
        └── app.log

5 directories, 3 files

## Backup Command
tar -czf backup_DATE.tar.gz data/

## Cron Job
0 22 * * * /home/user/task6/backup.sh

## Outcome
Understood Linux backup strategies, automation, and scheduling.
