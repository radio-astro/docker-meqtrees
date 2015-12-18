DOCKER_REPO=radioastro/meqtrees:1.3.3

.PHONY: build clean

all: run

build:
	docker build --pull -t ${DOCKER_REPO} .

run: build
	docker run -ti ${DOCKER_REPO}

clean:
	docker rmi ${DOCKER_REPO}
