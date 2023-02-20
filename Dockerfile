FROM alpine:latest

WORKDIR /app

RUN apk add catch2 cmake doxygen g++ gcc ninja
