PHONY: all

.PHONY: build
build:
	podman build -t forward-proxy:latest .

.PHONY: run
run:
	podman run --name forward-proxy -p 8080:80 forward-proxy

.PHONY: push
push:
	chmod +x ./scripts/push.sh
	./scripts/push.sh

.PHONY: deploy
deploy:
	chmod +x ./scripts/deploy.sh
	./scripts/deploy.sh
