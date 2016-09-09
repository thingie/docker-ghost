FROM fedora:24

MAINTAINER Honza poník Bartoš <pony@bahnhof.cz>

ADD . /home/ghost/
WORKDIR /home/ghost/
RUN dnf clean all && dnf update -y && dnf -y install npm nodejs git --nogpgcheck
RUN npm install -g grunt-cli
RUN adduser ghost
run chown -R ghost:ghost /home/ghost

USER ghost

RUN npm install
RUN grunt init
RUN grunt prod
RUN npm install intl ghost-gql intl-messageformat jsonpath

VOLUME /home/ghost/content

EXPOSE 80
CMD npm start --production
