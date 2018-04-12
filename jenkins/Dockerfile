FROM jenkins/jenkins:lts

MAINTAINER ProfDev

USER root

# Enable Node.js
RUN cd ~ && curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get -y install nodejs && \
    apt-get -y install build-essential
