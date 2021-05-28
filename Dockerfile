FROM golang:1.11.2-alpine
WORKDIR /jenkins
ADD . /jenkins
RUN cd /jenkins && go build
EXPOSE 8080
ENTRYPOINT ./jenkins
