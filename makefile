up:
	docker-compose up -d
down:
	docker-compose down
build:
	docker-compose build
ps:
	docker ps -a
clean:
	docker ps -aq | xargs docker rm && docker images -aq | xargs docker rmi