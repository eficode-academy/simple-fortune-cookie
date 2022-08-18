echo "tag=$1" > ./.env
docker-compose --env-file ./.env up -d