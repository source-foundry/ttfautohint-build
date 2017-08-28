default: build

build: ttfautohint-build.sh
	./ttfautohint-build.sh

lint: shellcheck

shellcheck: ttfautohint-build.sh
	$@ $^

