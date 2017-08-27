FROM golang:1.9
MAINTAINER Aditya Mukerjee <dev@chimeracoder.net>


ENV GOROOT_BOOTSTRAP=/usr/local/go

ADD . /go/src/github.com/ChimeraCoder/koro
WORKDIR /go/src/github.com/ChimeraCoder/koro/src


RUN ./all.bash
CMD /go/src/github.com/ChimeraCoder/koro/bin/go help

