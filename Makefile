.PHONY: all build run

DOCKER_IMAGE = git-workbench

all: build shell

build:
	docker build --rm=true --force-rm=true --no-cache --tag $(DOCKER_IMAGE) .

run:
	docker run --rm=true --tty=true --interactive=true --volume=`pwd`:/code --name $(DOCKER_IMAGE) $(DOCKER_IMAGE) bash
