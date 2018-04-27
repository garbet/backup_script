#!/bin/sh

sudo cp /var/log/secure ~/secure

USERNAME=$(whoami)
sudo chown $USERNAME ~/secure

tar -zcvf backup_secure.`date "+%Y%m%d_%H%M%S"`.tar.gz secure
