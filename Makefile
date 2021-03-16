
TRAVIS_BUILD_ID=local

build: test
	go build ./...

fmt: 
	gofmt -s -l -w .
	goimports -w .

lint: fmt
	./scripts/linting.sh

test: lint
	./scripts/test.sh

test-integration: lint
	./scripts/test-integration.sh

	


