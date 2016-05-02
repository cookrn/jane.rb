JANE_BUNDLER_VERSION := 1.11.2

default: deps

deps: vendor/bundler-1.11.2.gem

clean:
	@rm -f vendor/bundler-1.11.2.gem

vendor/bundler-1.11.2.gem:
	@mkdir -p vendor
	@cd vendor && gem fetch bundler --version=$(JANE_BUNDLER_VERSION) > /dev/null 2>&1
