ARG psversion=11

MAINTAINER Vishnu Nair <me@vishnudxb.me>

FROM postgres:$psversion

ENV POSTGRES_USER postgres

ENV POSTGRES_PASSWORD postgres

RUN apt-get update -y && apt-get install -y postgresql-server-dev-${PG_MAJOR} make gcc g++ git

WORKDIR /src

RUN git clone https://github.com/citusdata/postgresql-hll.git

WORKDIR /src/postgresql-hll

RUN PG_CONFIG=/usr/bin/pg_config make
RUN PG_CONFIG=/usr/bin/pg_config make install

RUN echo "shared_preload_libraries = 'hll'" >> /usr/share/postgresql/postgresql.conf.sample

COPY hll_extension.sql /docker-entrypoint-initdb.d/
