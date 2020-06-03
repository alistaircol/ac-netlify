PHONY: develop

image_name = klakegg/hugo
docker_run = docker run --rm --interactive --tty --user=$$(id -u) --volume="$$(pwd):/src"

develop:
	${docker_run} --publish="1313:1313" ${image_name} server

build:
	${docker_run} ${image_name}