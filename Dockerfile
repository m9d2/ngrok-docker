FROM golang:1.11-alpine
RUN apk add --update ca-certificates
ADD build.sh /
ENV GOROOT=/usr/local/go
RUN apk add --no-cache git make openssl
ADD ./ngrok /ngrok
RUN sh /build.sh
EXPOSE 8000
EXPOSE 8001
EXPOSE 4443
VOLUME [ "/ngrok" ]
CMD [ "/ngrok/bin/ngrokd"]
