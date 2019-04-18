FROM golang:1.12.4-alpine

RUN apk add git

RUN go get golang.org/x/tools/cmd/present

RUN apk del git

WORKDIR /slides

ADD . .


