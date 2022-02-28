docker run --name pg13-slave \
--env-file "pg13localenv-slave" \
--network=replicanet \
--memory="1g" \
--memory-swap="1g" \
--memory-reservation="1g" \
--memory-swappiness="0" \
-p 7432:5432 \
--volume /Docker/pg/pg13-slave-init:/docker-entrypoint-initdb.d \
--volume /Docker/pg/pg13-archive:/archive \
--volume /Docker/pg/pg13-settings:/tmp/postgresql \
-d \
postgres:13.6