FROM golang:latest

#COPY ./script.sh /
RUN apt-get update -y && apt-get install git && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

#CMD cd /home/container/ && git clone https://github.com/Fuglen/simple-fortune-cookie.git

#CMD ["-f","/dev/null"]
#&& cd simple-fortune-cookie \
#&& go build \
#&& go run ..
# COPY ./entrypoint.sh /home/container/entrypoint.sh
COPY . /home/container/
CMD go build && go run .
EXPOSE 8080
# RUN cd /home/container && chmod +x ./entrypoint.sh
# ENTRYPOINT  [ "/entrypoint.sh"]