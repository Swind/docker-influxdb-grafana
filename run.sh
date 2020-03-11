#!/bin/bash
CURRENT_DIR="$( cd "$(dirname "")" ; pwd -P )"

sudo mkdir -p $CURRENT_DIR/data/grafana
sudo mkdir -p $CURRENT_DIR/data/influxdb
docker-compose up -d

sudo chown -R 472:472 $CURRENT_DIR/data/grafana

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"
