#!/bin/sh
mkdir -p /data/backup
chown -R git /data/backup
cd /data/backup
su git -c '/usr/bin/gitea dump'
find /data/backup/ -mtime +6 -name "gitea-dump*.zip" | xargs rm -f  >> backup.log  2>&1
#/data/tool/ossutil64 cp -r /data/backup/ oss://xxx-backup/gitea --loglevel info -u
