FROM jenkins/jenkins:2.366

USER root
RUN apt-get update && apt-get install -y --assume-yes \
    build-essential make libssl-dev libghc-zlib-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip openssh-client \
    && apt-get clean --yes && apt-get autoremove --yes && rm -rf /var/lib/apt/lists

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
USER jenkins