#
#
#
#

DOCKER_IMAGE_NAME=asclatex:latest

build-docker:
	@echo "Building the official LaTeX docker image"
	docker build -t $(DOCKER_IMAGE_NAME) .

push-docker: build-docker
	@echo "See: https://www.docker.com/blog/how-to-use-your-own-registry-2/"
	docker tag $(DOCKER_IMAGE_LATEST) localhost:5000/$(DOCKER_IMAGE_NAME)
	docker push localhost:5000/$(DOCKER_IMAGE_NAME)
