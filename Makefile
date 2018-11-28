IMAGE_TAG := nicolkill/docker_presentation
REVISION=$(shell git rev-parse --short HEAD)
RUN_TEMPLATE := docker run --rm -v `pwd`:/app -w /app

all: build image

up:
	docker-compose up

build:
	$(RUN_TEMPLATE) node:carbon npm install

image:
	docker build -t ${IMAGE_TAG}:${REVISION} .
	docker tag ${IMAGE_TAG}:${REVISION} ${IMAGE_TAG}:latest

test:
	$(RUN_TEMPLATE) ${IMAGE_TAG}:latest npm run test

bash:
	docker-compose exec eber bash

deploy:
	echo "Bip boo boo bip"
	echo "..."
	echo "Deployed"
