#!/bin/bash

export ELM_POST_PROCESS_FILE="/usr/bin/elm-format --elm-version=0.19 --yes"
java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate -i test.yaml -g elm -t modules/openapi-generator/src/main/resources/elm -o /tmp/elm --additional-properties enablePostProcessFile=true
cd /tmp/elm
elm make --output=/dev/null src/**/*.elm
