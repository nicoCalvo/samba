## SAMBA file sharing

### Intent

Use this docker-compose to easily setup a samba container with an alpine client
and share files between them.

By default, Samba container has a volume linked to /opt in hosts' system. That
can be easily modified through the smb.conf, adding or removing more paths.

A user __samba_client__ is created in samba's container to grant access to mount
points and to be used by any client, as it does in alpine's container.

Both .sh scripts have some simple configurations like mounting the share or
creating the sharing account.

Note that in docker-compose, is not need of using __cap_add__ SYS_ADMIN or
DAC_READ_SEARCH. By simply declaring the container as to be run in privileged
mode, the container is allowed to mount any external resources. Without such
option, you will get a "permission denied" error that may mislead into thinking
there's something wrong with the samba setup.
