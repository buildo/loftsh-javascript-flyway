FROM loftsh/javascript:latest

ARG FLYWAY_VERSION=8.5.13

RUN wget -qO- https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz | \
      tar xvz && ln -s `pwd`/flyway-${FLYWAY_VERSION}/flyway /usr/local/bin
