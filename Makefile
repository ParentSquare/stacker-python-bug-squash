current_dir = $(shell pwd)

build:
	docker build -t remind101/stacker-python-bug-squash .

shell: build
	docker run -v $(current_dir):/usr/src/app -it remind101/stacker-python-bug-squash sh
