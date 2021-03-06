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
	docker-compose down && docker images -aq | xargs docker rmi
build-pro:
	docker-compose -f production.yml build
up-pro:
	docker-compose -f production.yml up -d
down-pro:
	docker-compose -f production.yml down
start-production:
	docker-compose -f production.yml up --build -d
restart-production:
	docker-compose -f production.yml down && docker image prune -f && docker-compose -f production.yml up --build -d