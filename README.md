# docker-postgres-hll

PostgreSQL extension adding HyperLogLog data structures as a native data type.

A simple postgres container with hll extension.

You can build it locally by clonning the repo and run the below commands:

```

# build for POSTGRES 11
docker build -t hll:11 --build-arg psversion=11 .

# build for POSTGRES 9.6
docker build -t hll:9.6 --build-arg psversion=9.6 .

```

Or you can use it directly from Dockerhub:

```

# Running POSTGRES 11 with hll extension

docker run -d --name hll vishnunair/docker-postgres-hll:11

```

```

# Running POSTGRES 9.6 with hll extension

docker run -d --name hll vishnunair/docker-postgres-hll:9.6

```
