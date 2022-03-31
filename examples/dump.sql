mysqldump -u root -p -h db sakila > sakilabackup.sql

source ./sakilabackup.sql
mysql -u root -p -h db sakilatest < sakilabackup.sql
mysql -u root -p -h db -e "source ./sakilabackup.sql" sakilatest 