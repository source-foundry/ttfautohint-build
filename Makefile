default: build

build: ttfautohint-build.sh
	./ttfautohint-build.sh

lint: shellcheck checkbashisms

shellcheck: ttfautohint-build.sh
	$@ $^

checkbashisms: ttfautohint-build.sh
	$@ $^
