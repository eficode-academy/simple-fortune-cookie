FROM redis:latest

WORKDIR ~

RUN mkdir backend
COPY . ./backend

# RUN apt-get update -y && \
#     apt-get install -y golang-go --no-install-recommends && \
#     apt-get autoremove -y && \
#     apt-get clean -y && \
#     rm -rf /var/lib/apt/lists/* && \
#     CGO_ENABLED=0 GOOS=linux go build ./backend

# CMD ["go", "run", "./backend"]
CMD ["which", "go"]
