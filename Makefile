VERSION=v1
TAG=ahilaly/slides:$(VERSION)

build:
	docker build -t $(TAG) .

push:
	docker push $(TAG)

pull:
	docker pull $(TAG)

run:
	docker run -it -p 3999:3999 \
		$(TAG) \
		present \
		-notes \
		-http=0.0.0.0:3999 