FROM google/nodejs

WORKDIR /app

EXPOSE 18080
CMD npm -g install forever && npm install && npm start
