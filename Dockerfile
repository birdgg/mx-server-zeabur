FROM --platform=linux/amd64 innei/mx-server:latest

WORKDIR /app

COPY ./docker-run.sh /app/docker-run.sh

ENV TZ=Asia/Shanghai
ENV NODE_ENV=production

VOLUME /root/.mx-space

CMD ["bash", "./docker-run.sh"]

EXPOSE 2333