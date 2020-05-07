#!/bin/sh
docker run -v "$pwd:/work" "capybara1/avro-tools" "$@"
