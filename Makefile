
.PHONY: build push

local:
	go build -o bin/tcp-proxy main.go

build: README.md
	docker build -t ghcr.io/sergealexandre/tcp-proxy .

push: build
	docker push ghcr.io/sergealexandre/tcp-proxy

README.md: ./main.go ./tools/*.md
	./tools/build_readme.sh

