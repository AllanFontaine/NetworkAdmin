# Derived from official mysql image (our base image)
FROM mariadb

ENV MYSQL_DATABASE woodyToys

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./db-script/ /docker-entrypoint-initdb.d/

EXPOSE 3306

