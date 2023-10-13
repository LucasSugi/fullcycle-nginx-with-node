build: build-network build-mysql build-node-prod build-nginx-prod

build-network:
	docker network ls | grep node-network > /dev/null || docker network create node-network

build-mysql:
	docker build -t mysql-fc:latest -f mysql/Dockerfile mysql/

run-mysql:
	docker run --rm -it --name mysql-fc -e MYSQL_DATABASE=nodedb -e MYSQL_ROOT_PASSWORD=root -d --network=node-network mysql-fc:latest

exec-mysql:
	docker exec -it mysql-fc mysql -uroot -proot

build-node:
	docker build -t node-fc:latest -f node/Dockerfile node/

build-node-prod:
	docker build -t node-fc:latest -f node/Dockerfile.prod node/

run-node:
	docker run --rm -it --name node-fc -p 3000:3000 -d --network=node-network node-fc:latest

run-node-prod:
	docker run --rm -it --name node-fc -d --network=node-network node-fc:latest

exec-node:
	docker exec -it node-fc bash

build-nginx:
	docker build -t nginx-fc:latest -f nginx/Dockerfile nginx/

build-nginx-prod:
	docker build -t nginx-fc:latest -f nginx/Dockerfile.prod nginx/

run-nginx:
	docker run --rm --name nginx-fc -p 8080:80 --network=node-network nginx-fc:latest

run-nginx-prod:
	docker run --rm --name nginx-fc -d -p 8080:80 --network=node-network nginx-fc:latest

exec-nginx:
	docker exec -it nginx-fc bash
