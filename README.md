# Docker-compose files for a simple uptodate
# InfluxDB
# + Grafana stack
# + Telegraf

## Get the stack (only once):

```
git clone https://github.com/nicolargo/docker-influxdb-grafana.git
cd docker-influxdb-grafana
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
```

## Run your stack:

```
./run.sh
```

## Show me the logs:

```
docker-compose logs
```

## Stop it:

```
docker-compose stop
docker-compose rm
```

## Update it:
```
git pull
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
```

## Grafana Dashboard

https://grafana.com/grafana/dashboards/928
