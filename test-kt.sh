#!/bin/bash

java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
    -i discriminator.yml \
    -g kotlin-spring \
    -t modules/openapi-generator/src/main/resources/kotlin-spring \
    -o gen-kotlin
