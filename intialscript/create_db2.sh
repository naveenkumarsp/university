#!/bin/bash
#################
# Change this values
#################


psqluser="uadmin1"   # Database username
psqlpass="drdoom13"  # Database password
psqldb="univer"   # Database name


#################################################
#                       #
#    PLEASE DO NOT CHANGE THE FOLLOWING CODES   #
#                       #
#################################################
apt-get update vim sudo net-tools -y
#################
# Dependicies
#################
sudo apt-get update
sudo apt-get update
sudo apt-get install postgresql -y
update-rc.d postgresql enable
service postgresql start

#################
# Database
#################
sudo printf "CREATE USER $psqluser WITH PASSWORD '$psqlpass';\nCREATE DATABASE $psqldb WITH OWNER $psqluser;" > dbscript.sql

sudo -u postgres psql -f dbscript.sql


echo "Finished Database section"

#################
# Copy application
#################
npm install
#################
# buiild application
#################
npm run webpack 
#################
# run application
#################
npm start
