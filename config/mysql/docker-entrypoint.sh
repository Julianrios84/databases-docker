#!/bin/bash

db_host=localhost
db_user=root
db_pass=9czOwKRRYVPfeQB4rpkYArFnE
# Esperar a que el servicio de MySQL esté disponible
while ! mysqladmin ping -h"$db_host" --silent; do
  sleep 1
done


# db00=(user password collection database)
db01=(user01 user01 users resume_users)
db02=(user02 user02 personals resume_personals)
db03=(user03 user03 educations resume_educations)
db04=(user04 user04 experiences resume_experiences)
db05=(user05 user05 skills resume_skills)
db06=(user06 user06 certifications resume_certifications)
db07=(user07 user07 courses resume_courses)
db08=(user08 user08 projects resume_projects)
db09=(user09 user09 presentations resume_presentations)
db10=(user10 user10 curriculums resume_principal)


mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db01[3]}; CREATE USER IF NOT EXISTS '${db01[0]}'@'%' IDENTIFIED BY '${db01[1]}'; GRANT ALL PRIVILEGES ON ${db01[3]}.* TO '${db01[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db02[3]}; CREATE USER IF NOT EXISTS '${db02[0]}'@'%' IDENTIFIED BY '${db02[1]}'; GRANT ALL PRIVILEGES ON ${db02[3]}.* TO '${db02[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db03[3]}; CREATE USER IF NOT EXISTS '${db03[0]}'@'%' IDENTIFIED BY '${db03[1]}'; GRANT ALL PRIVILEGES ON ${db03[3]}.* TO '${db03[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db04[3]}; CREATE USER IF NOT EXISTS '${db04[0]}'@'%' IDENTIFIED BY '${db04[1]}'; GRANT ALL PRIVILEGES ON ${db04[3]}.* TO '${db04[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db05[3]}; CREATE USER IF NOT EXISTS '${db05[0]}'@'%' IDENTIFIED BY '${db05[1]}'; GRANT ALL PRIVILEGES ON ${db05[3]}.* TO '${db05[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db06[3]}; CREATE USER IF NOT EXISTS '${db06[0]}'@'%' IDENTIFIED BY '${db06[1]}'; GRANT ALL PRIVILEGES ON ${db06[3]}.* TO '${db06[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db07[3]}; CREATE USER IF NOT EXISTS '${db07[0]}'@'%' IDENTIFIED BY '${db07[1]}'; GRANT ALL PRIVILEGES ON ${db07[3]}.* TO '${db07[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db08[3]}; CREATE USER IF NOT EXISTS '${db08[0]}'@'%' IDENTIFIED BY '${db08[1]}'; GRANT ALL PRIVILEGES ON ${db08[3]}.* TO '${db08[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db09[3]}; CREATE USER IF NOT EXISTS '${db09[0]}'@'%' IDENTIFIED BY '${db09[1]}'; GRANT ALL PRIVILEGES ON ${db09[3]}.* TO '${db09[0]}'@'%'; FLUSH PRIVILEGES;"

mysql -h"$db_host" -u$db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS ${db10[3]}; CREATE USER IF NOT EXISTS '${db10[0]}'@'%' IDENTIFIED BY '${db10[1]}'; GRANT ALL PRIVILEGES ON ${db10[3]}.* TO '${db10[0]}'@'%'; FLUSH PRIVILEGES;"


