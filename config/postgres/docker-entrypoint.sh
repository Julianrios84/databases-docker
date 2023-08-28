#!/bin/bash
set -e

POSTGRES_USER=postgres


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


# Database 01
echo -e "\nDatabase 01"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db01[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db01[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db01[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db01[0]} WITH ENCRYPTED PASSWORD '${db01[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db01[3]} OWNER TO ${db01[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db01[3]} TO ${db01[0]}"

# Database 02
echo -e "\nDatabase 02"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db02[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db02[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db02[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db02[0]} WITH ENCRYPTED PASSWORD '${db02[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db02[3]} OWNER TO ${db02[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db02[3]} TO ${db02[0]}"

# Database 03
echo -e "\nDatabase 03"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db03[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db03[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db03[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db03[0]} WITH ENCRYPTED PASSWORD '${db03[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db03[3]} OWNER TO ${db03[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db03[3]} TO ${db03[0]}"

# Database 04
echo -e "\nDatabase 04"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db04[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db04[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db04[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db04[0]} WITH ENCRYPTED PASSWORD '${db04[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db04[3]} OWNER TO ${db04[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db04[3]} TO ${db04[0]}"

# Database 05
echo -e "\nDatabase 05"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db05[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db05[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db05[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db05[0]} WITH ENCRYPTED PASSWORD '${db05[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db05[3]} OWNER TO ${db05[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db05[3]} TO ${db05[0]}"

# Database 06
echo -e "\nDatabase 06"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db06[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db06[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db06[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db06[0]} WITH ENCRYPTED PASSWORD '${db06[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db06[3]} OWNER TO ${db06[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db06[3]} TO ${db06[0]}"

# Database 07
echo -e "\nDatabase 07"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db07[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db07[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db07[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db07[0]} WITH ENCRYPTED PASSWORD '${db07[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db07[3]} OWNER TO ${db07[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db07[3]} TO ${db07[0]}"

# Database 08
echo -e "\nDatabase 08"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db08[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db08[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db08[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db08[0]} WITH ENCRYPTED PASSWORD '${db08[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db08[3]} OWNER TO ${db08[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db08[3]} TO ${db08[0]}"

# Database 09
echo -e "\nDatabase 09"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db09[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db09[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db09[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db09[0]} WITH ENCRYPTED PASSWORD '${db09[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db09[3]} OWNER TO ${db09[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db09[3]} TO ${db09[0]}"

# Database 10
echo -e "\nDatabase 10"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_database WHERE datname = '${db10[3]}'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE ${db10[3]}"
psql -U "$POSTGRES_USER" -tc "SELECT 1 FROM pg_user WHERE usename = '${db10[0]}'" | grep -q 1 || psql -U postgres -c "CREATE USER ${db10[0]} WITH ENCRYPTED PASSWORD '${db10[1]}'"
psql -U "$POSTGRES_USER" -c "ALTER DATABASE ${db10[3]} OWNER TO ${db10[0]}"
psql -U "$POSTGRES_USER" -c "GRANT ALL PRIVILEGES ON DATABASE ${db10[3]} TO ${db10[0]}"


# psql -U $POSTGRES_USER -c "\l";
# psql -U $POSTGRES_USER -c "\du";

# bash docker-entrypoint-initdb.d/docker-entrypoint.sh