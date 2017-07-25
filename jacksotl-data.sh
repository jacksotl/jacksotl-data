#!/bin/bash
# Set variables
# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=root
# Set database and table names
MYDATABASE=aboutmesurvey
MYTABLE=tblSurveyQuestions
# Place data in the MySQL secure directory
sudo cp ./assignment4.csv /var/lib/mysql-files/
echo "Data copied to secure directory."
# Check if database exists, and if not, create database
echo "Checking for database..."
DBCHECK=`mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "show databases;" | grep -Fo $MYDATABASE`
if [ "$DBCHECK" == "$MYDATABASE" ]; then
   echo "Database exists"
else
   echo "Database does not exist. Creating database..."
   mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"
fi
# Check if table exists, and if not, create table
echo "Checking for table..."
DBCHECK=`mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "show tables;" $MYDATABASE | grep -Fo $MYTABLE`
if [ "$DBCHECK" == "$MYTABLE" ]; then
   echo "Table exists"
else
   echo "Table does not exist. Creating table..."
   mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (DATE TIMESTAMP, AGE INT, FAVORITECOLOR VARCHAR(255), FAVORITEMOVIE VARCHAR(255), HOMETOWN VARCHAR(255), FRANKLINSTREET VARCHAR(255)); ALTER TABLE $MYTABLE ADD PRIMARY KEY (DATE);" $MYDATABASE
fi
# Write data from assignment4.csv into database table
echo "Writing new data to $MYTABLE in database $MYDATABASE."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "LOAD DATA INFILE '/var/lib/mysql-files/assignment4.csv' INTO TABLE $MYTABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';" $MYDATABASE
echo "Data written successfully."
# Dump current version of database into export file
echo "Survey data dumped to file `date --iso-8601`-$MYDATABASE.sql"
mysqldump -u"$MYSQLUSER" -p"$MYSQLPASS" $MYDATABASE > `date --iso-8601`-$MYDATABASE.sql
# remove /var/lib/mysql-files/tmp.csv
sudo rm /var/lib/mysql-files/assignment4.csv

