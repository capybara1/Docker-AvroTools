#!/bin/sh
docker run --rm -v "$pwd:/work" "capybara1/avro-tools" "$@"
