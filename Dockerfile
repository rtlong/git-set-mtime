FROM golang:1.5.2-alpine

WORKDIR /go/src/github.com/rtlong/git-set-mtime

COPY main.go /go/src/github.com/rtlong/git-set-mtime/

RUN apk --update add git \
 && go get -d -v . \
 && GCO_ENABLED=0 GOOS=linux go build -a -x --installsuffix cgo --ldflags="-s" -o git-set-mtime.linux_x64
