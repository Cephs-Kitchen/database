FROM  postgres:latest

ENV POSTGRES_USER ceph
ENV POSTGRES_PASSWORD ceph
ENV POSTGRES_DB cephs_citchen

COPY init.sql /docker-entrypoint-initdb.d/