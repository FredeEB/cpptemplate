FROM ubuntu:latest

WORKDIR /app

RUN apt update -y
RUN apt install -y build-essential catch2 cmake doxygen graphviz ninja-build
