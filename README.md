Mock Server for Mozilla Contile

## Usage

### Run it via docker

`$ docker run -p 8080:8080 --name contile-mock --rm ncloudioj/contile-mock:latest`

### Run it locally

#### Installation

This mock server is an Openresty application, so you might need to install Openresty on your machine.

For example, on MacOS, you can install it via Homebrew `brew install openresty`.

#### Instructions

* Run mock server
`$ make run`

* Reload the configuration or the source file
`$ make reload`

* Stop mock server
`$ make stop`

## Add more stuff to the server

* The Contile endpoint is exposed at `http://localhost:8080/contile/v1`
* The implementation is at `src/contile.lua`
* You can add more endpoints to `conf/nginx.conf`
