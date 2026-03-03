# create new network cho các dịch vụ giao tiếp nội bộ được với nheo
docker network create elastic
docker network ls

# Elasticsearch =======================================================
# https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-elasticsearch-docker-basic
docker pull docker.elastic.co/elasticsearch/elasticsearch:9.3.1
docker run --name es01 --net elastic -p 9200:9200 -p 9300:9300 -it -m 6GB -e "xpack.ml.use_auto_machine_memory_percent=true" docker.elastic.co/elasticsearch/elasticsearch:9.3.1
# access with https: https://localhost:9200/
# enter elastic & password
# ```
# Password for the elastic user (reset with `bin/elasticsearch-reset-password -u elastic`):
#   I9W*PsA96=QcE8OtQYcE
# ```

# Kibana =======================================================
# https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-kibana-with-docker
docker pull docker.elastic.co/kibana/kibana:9.3.1
docker run --name kib01 --net elastic -p 5601:5601 docker.elastic.co/kibana/kibana:9.3.1
# access with http: http://localhost:5601/
# Paste token to address access
# ```
# Configure Kibana to use this cluster:
# • Run Kibana and click the configuration link in the terminal when Kibana starts.
# • Copy the following enrollment token and paste it into Kibana in your browser (valid for the next 30 minutes):
#   eyJ2ZXIiOiI4LjE0LjAiLCJhZHIiOlsiMTcyLjE5LjAuMjo5MjAwIl0sImZnciI6IjRhMTBjM2JlMGYxZWNhOTZmM2ZhNjQ3YmVmY2U2NzY4NjE0ZDJmOTcxODk3MGEyNmQ1ODVkOGE1NWY3YjI2NWEiLCJrZXkiOiI0MEpfczV3QmVsVV9maVllWHYwWjpoU2w0QWp6Ymw4YlR2dlF1TlZJVlNRIn0=
# ```
# ==========================
# http://localhost:5601/app/dev_tools#/console/shell

