
# ttfautohint-build  

[![Build Status](https://travis-ci.org/source-foundry/ttfautohint-build.svg?branch=master)](https://travis-ci.org/source-foundry/ttfautohint-build)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/7af50cb6b5484633a689e2ca86e11569)](https://app.codacy.com/app/SourceFoundry/ttfautohint-build)

## About

ttfautohint-build includes a simple, straightforward [ttfautohint](https://www.freetype.org/ttfautohint/) build from scratch approach on Linux and macOS platforms.  [FreeType](https://www.freetype.org/) and [Harfbuzz](https://github.com/behdad/harfbuzz) build dependencies (at appropriate release versions) are included in the installation.

The build script is `ttfautohint-build.sh` (located in the root of the repository).  This script is linted with `shellcheck` & `checkbashisms` and is tested for build execution completion on Linux (currently Ubuntu Trusty) and macOS v10.10-v10.13 using [the Travis CI service](https://travis-ci.org/source-foundry/ttfautohint-build).

Builds employ a simple `make` workflow that does not require super user permissions.

If you are looking for a simple way to install + use ttfautohint and do not need to build the application from source, check out the free, open [ttfautohint-py project](https://github.com/fonttools/ttfautohint-py).

## Pre-Install Build Dependencies

### Linux

- None

### macOS

- macOS v10.11 and above
- XCode v7.3 and above

## Usage

Select one of the following approaches to install the current release of `ttfautohint`.

### git clone Approach

```
$ git clone https://github.com/source-foundry/ttfautohint-build.git
$ cd ttfautohint-build
$ make
```

### cURL Approach

```
$ curl -L -O https://github.com/source-foundry/ttfautohint-build/archive/v1.8.2.7.tar.gz
$ tar -xzvf ttfautohint-build-1.8.2.7.tar.gz
$ cd ttfautohint-build-1.8.2.7
$ make
```

With both of the above approaches, the `ttfautohint` executable is installed on the path `$HOME/ttfautohint-build/local/bin/ttfautohint`.

### ttfautohint Execution

You can use the following approaches to execute `ttfautohint` with your font files:

#### Shell Scripts


```
# without shell script constant

"$HOME/ttfautohint-build/local/bin/ttfautohint" [ttfautohint args]
```

```
# with shell script constant

TTFAH="$HOME/ttfautohint-build/local/bin/ttfautohint"

"TTFAH" [ttfautohint args]
```

#### Command Line

Modify the PATH definition in your shell settings file (e.g. .bashrc if you are using bash) with the following line **after** PATH is defined in the file:

```
export PATH="$HOME/ttfautohint-build/local/bin/:$PATH"
```

then, source your shell settings file on the command line with:

```
$ source [shell settings file path]
```

You can then use `ttfautohint` on the command line as follows:

```
$ ttfautohint [ttfautohint args]
```

## License

[MIT License](LICENSE)


