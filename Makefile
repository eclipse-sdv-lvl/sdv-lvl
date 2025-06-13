INPUT=docs/SDV-level.adoc
OUTPUT=build/index.html
STYLESHEET=stylesheet.css

.PHONY: all build clean

all: build

build:
	mkdir -p build
	asciidoctor -a stylesheet=$(STYLESHEET) $(INPUT) -o $(OUTPUT)
	tar -cf build/github-pages.tar -C build index.html
clean:
	rm -rf build
