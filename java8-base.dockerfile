FROM adoptopenjdk/openjdk8:alpine-slim

LABEL "io.buildpacks.stack.id"="mskj.cmbc.com.cn.java8"

RUN set -o pipefail \
    && apk add --no-cache -u bash ca-certificates openssl \
    && java -version \
    && javac -version
