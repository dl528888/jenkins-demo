FROM golang:1.11.2-alpine
ADD . /go/src/app
WORKDIR /go/src/app
RUN  go build -v -o /go/src/app/jenkins-app
EXPOSE 8080
CMD ["./jenkins-app"]
