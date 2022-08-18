FROM golang:1.16-alpine

WORKDIR /app

COPY frontend/frontend .

EXPOSE 8080

RUN chmod +x frontend/frontend

CMD ["frontend/frontend"]