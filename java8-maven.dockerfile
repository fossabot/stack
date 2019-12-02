FROM mskj/java8-base:latest
ARG cnb_uid=1000
ARG cnb_gid=1000

LABEL "io.buildpacks.stack.id"="mskj.cmbc.com.cn.java8"

ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}

RUN apk add --no-cache -u maven\
    && addgroup cnb --gid ${cnb_gid} \
    && adduser  cnb -u ${cnb_uid} -D -S -s /bin/bash -G cnb \
    && mvn -version
