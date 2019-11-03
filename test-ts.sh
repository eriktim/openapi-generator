#!/bin/bash

user=$(id -u)
group=$(id -g)

image="openapitools/openapi-generator-cli:latest"

docker run --rm \
		-u "${user}:${group}" \
		-v "${PWD}:/local" \
		"${image}" \
		generate \
		--input-spec "/local/discriminator.yml" \
		--generator-name typescript-fetch \
		--output "/local/gen-ts" \
    -t "/local/template-ts" \
		--additional-properties=typescriptThreePlus=true,supportsES6=true
