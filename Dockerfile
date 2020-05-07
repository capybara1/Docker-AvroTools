FROM adoptopenjdk:8-hotspot
ENV AVRO_VERSION 1.9.2
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="$VERSION" \
      org.label-schema.maintainer="https://github.com/capybara1/" \
      org.label-schema.url="https://github.com/capybara1/Docker-AvroTools" \
      org.label-schema.name="avro-tools" \
      org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https://github.com/capybara1/Docker-AvroTools" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.dockerfile="/Dockerfile"
RUN curl -o /usr/local/lib/avro-tools.jar https://artfiles.org/apache.org/avro/avro-${AVRO_VERSION}/java/avro-tools-${AVRO_VERSION}.jar
WORKDIR /work
ENTRYPOINT ["java", "-jar", "/usr/local/lib/avro-tools.jar"]
CMD ["--help"]

