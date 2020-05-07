@echo off
docker run --rm -v "%cd%:/work" "capybara1/avro-tools" %*
