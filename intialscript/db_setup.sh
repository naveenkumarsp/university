psql -c "CREATE USER uadmin1 WITH PASSWORD 'drdoom13'"
psql -c "CREATE DATABASE university1;"
psql -c "GRANT ALL PRIVILEGES ON DATABASE university1 to uadmin1;"

sudo -u postgres /path/to/this/script.sh

apt-get install postgresql postgresql-contrib
update-rc.d postgresql enable
service postgresql start

sudo docker run -ti ubuntu /bin/bash