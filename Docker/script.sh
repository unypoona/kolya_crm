#!/usr/bin/env bash
docker-compose up -d --build
NEWUID=1000
OLDUID=999
LOGIN=koshpaevsv
sudo usermod -u $NEWUID $LOGIN
sudo groupmod -g $NEWUID $LOGIN
sudo find / -user $OLDUID -exec chown -h $NEWUID {} \;
sudo find / -group $OLDUID -exec chgrp -h $NEWUID {} \;
sudo usermod -g $NEWUID $LOGIN