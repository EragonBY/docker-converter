FROM debian:latest
MAINTAINER EragonBY <eragonby@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends gnumeric curl

COPY ./ssconvert-xls-to-csv.sh /ssconvert-xls-to-csv.sh

ENTRYPOINT ["/ssconvert-xls-to-csv.sh"]
