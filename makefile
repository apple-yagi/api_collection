up:
	docker-compose up -d
down:
	docker-compose down
build:
	docker-compose build
start:
	docker-compose up --build -d
restart:
	docker-compose down && docker-compose up --build -d
ps:
	docker ps -a
clean:
	docker ps -aq | xargs docker rm && docker images -aq | xargs docker rmi