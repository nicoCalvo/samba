#!/bin/bash

echo 'ADDING USER FOR SHARING PURPOSE'
adduser samba_client --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "samba_client:samba_client" | chpasswd
chown -R samba_client /mnt
