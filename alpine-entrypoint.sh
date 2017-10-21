#!/bin/sh

sleep 5
mount -t cifs //samba/dev_projects /mnt -o user=samba_client,password=samba_client
while sleep 2; do echo thinking; done
