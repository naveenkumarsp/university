#/bin/sh
sudo su postgres psql -c "CREATE USER uadmin1 WITH PASSWORD 'drdoom13'"
sudo su postgres psql -c "CREATE DATABASE university1;"
sudo su postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE university1 to uadmin1;"
