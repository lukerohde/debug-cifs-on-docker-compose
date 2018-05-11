FROM ubuntu
RUN apt-get update -qq && apt install -y cifs-utils
RUN mkdir /app
WORKDIR /app
COPY . /app
