FROM ubuntu

RUN apt-get update && apt-get install -y nodejs npm && sudo ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /var/www

ADD . /var/www/
RUN cd /var/www && npm install

EXPOSE  3000
CMD ["node", "/var/www/server.js"]
