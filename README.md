# RaV

Radiology Viewer by FNNDSC.

Project was initialized with the [Polymer Starter Kit v2](https://github.com/PolymerElements/polymer-starter-kit).

## Update

``` bash

git pull origin master && \
rm -rf bower_components && \
bower update

```

## Develop

``` bash

polymer serve

```

## Build

es5-bundled preset includes:

* js-compile: es6 -> es5 (for older browser support)
* js-minify
* html-minify
* css-minify
* [more](https://www.polymer-project.org/1.0/docs/tools/polymer-cli)

``` bash

cd ~/src/gex && \
polymer build --verbose --preset es5-bundled && \
polymer serve --port --hostname 0.0.0.0 8060 build/es5-bundled

```

## Deploy

## Citations

## CUBE Setup

Start CUBE:

``` bash

docker-compose up

```

Startpfdcm with right port

``` bash

....

```