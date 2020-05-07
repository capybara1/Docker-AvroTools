@echo off
docker run -v "%cd%:/work" "capybara1/avro-tools" %*
