FROM ubuntu:14.04

ENV HUBOT_GIPHY_API_KEY dc6zaTOxFJmzC
ENV HUBOT_MUTE_ROOM_PREFIX=

RUN apt-get update && \
    apt-get -y install expect redis-server nodejs npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g coffee-script yo generator-hubot

RUN useradd -d /hubot -m -s /bin/bash -U hubot

USER hubot
WORKDIR /hubot

RUN yo hubot --name="Gir" --owner="<Marcus Morris> mmorris@commonsense.org" --description="The pig... COMMANDS ME!" --defaults
COPY ./package.json .
RUN npm install

COPY . .

USER root
RUN chmod +x start.sh
ENTRYPOINT ["./start.sh"]

USER hubot
CMD bin/hubot 
