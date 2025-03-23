.PHONY: start
start:
	go run .

.PHONY: build
build:
	gogio -target js -o output .

.PHONY: test
test:
	./gradlew test

.PHONY: clean
clean:
	rm -R output