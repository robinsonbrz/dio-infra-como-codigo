# syntax=docker/dockerfile:1
FROM ubuntu:latest

RUN apt update -y && apt install openssl -y

COPY create-infra.sh .
RUN chmod +x create-infra.sh
ENTRYPOINT ["./create-infra.sh"]