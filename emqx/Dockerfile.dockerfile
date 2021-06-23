FROM emqx/emqx:4.2.11

USER root

RUN  apk add -U tzdata \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo "Asia/Shanghai" > /etc/timezone \
  && apk del tzdata

USER emqx