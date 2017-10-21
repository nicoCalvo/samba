FROM sixeyed/samba

COPY ./samba-entrypoint.sh /

RUN rm /etc/samba/smb.conf
COPY ./smb.conf /etc/samba/smb.conf

RUN bash samba-entrypoint.sh
