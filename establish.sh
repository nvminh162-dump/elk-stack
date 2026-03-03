# https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-elasticsearch-docker-basic
# create new network cho các dịch vụ giao tiếp nội bộ được với nheo
docker network create elastic
docker network ls
docker run --name es01 --net elastic -p 9200:9200 -it -m 6GB -e "xpack.ml.use_auto_machine_memory_percent=true" docker.elastic.co/elasticsearch/elasticsearch:9.3.1
# access with https: https://localhost:9200/

