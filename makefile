# env variables

REPO=tigerpaws2

.PHONY: build push

all: build push

build:
	docker build -t ${REPO}/raku-tidbits:latest .

push:
	docker push ${REPO}/raku-tidbits:latest
