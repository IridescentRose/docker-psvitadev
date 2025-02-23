IMAGE := IridescentRose/psvitadev

build:
	docker build --force-rm -t $(IMAGE) .

rebuild:
	docker build --pull --no-cache --force-rm -t $(IMAGE) .

shell: build
	docker run -it --rm $(IMAGE) /bin/bash
