PHONY: develop

image_name = klakegg/hugo:0.75.1-ext
docker_run = docker run --rm --interactive --tty --user=$$(id -u) --volume="$$(pwd):/src"

lint:
	@docker run --rm $(shell tty -s && echo "-it" || echo) -v "$(shell pwd):/data" cytopia/yamllint:latest .

develop:
	${docker_run} --publish="1313:1313" ${image_name} server --buildDrafts --enableGitInfo --disableFastRender

build:
	${docker_run} ${image_name}

article:
	@./.scripts/new-article
