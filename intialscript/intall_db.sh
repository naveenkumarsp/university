#/bin/sh
apt-get install postgresql postgresql-contrib -y
update-rc.d postgresql enable
service postgresql start

