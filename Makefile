INPUT=docs/SDV-level.adoc
OUTPUT=build/SDV-level.html
STYLESHEET=stylesheet.css

.PHONY: all build clean

all: build

build:
	mkdir -p build
	asciidoctor -a stylesheet=$(STYLESHEET) $(INPUT) -o $(OUTPUT)

clean:
	rm -rf build
