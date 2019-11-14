FROM adoptopenjdk/openjdk11:alpine-slim

LABEL "io.buildpacks.stack.id"="mskj.cmbc.com.cn.java11"

RUN apk add --no-cache -u bash ca-certificates openssl \
    && java -version \
    && javac -version
