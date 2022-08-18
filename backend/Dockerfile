FROM ubuntu:latest
RUN apt-get update && apt-get install golang-go -y && apt-get install redis -y
RUN apt-get update && apt-get install -y ca-certificates openssl

ARG cert_location=/usr/local/share/ca-certificates

# Get certificate from "github.com"
RUN openssl s_client -showcerts -connect github.com:443 </dev/null 2>/dev/null|openssl x509 -outform PEM > ${cert_location}/github.crt
# Get certificate from "proxy.golang.org"
RUN openssl s_client -showcerts -connect proxy.golang.org:443 </dev/null 2>/dev/null|openssl x509 -outform PEM >  ${cert_location}/proxy.golang.crt
# Update certificates
RUN update-ca-certificates
#RUN go build backend
#RUN go run backend
#RUN go install github.com/gomodule/redigo/redis@latest
COPY . .
#RUN apt-get install redis-server -y
#RUN apt-get install systemctl -y
#RUN systemctl restart redis.service
RUN go build backend
CMD ["go", "run", "backend"]
