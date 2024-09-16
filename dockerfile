FROM postgres:latest
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=dvdrental
ENV POSTGRES_DB=dvdrental
EXPOSE 5432
COPY ./dvdrental.tar /var/backups/dvdrental.tar
COPY ./restore.sh /docker-entrypoint-initdb.d/restore.sh