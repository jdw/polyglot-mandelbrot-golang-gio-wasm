.PHONY: start
start:
	echo "Starting server..."
	goexec 'http.ListenAndServe(":8080", http.FileServer(http.Dir("output")))'

.PHONY: run
run:
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