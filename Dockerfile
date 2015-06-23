FROM google/nodejs

WORKDIR /app

EXPOSE 18080
CMD npm install && npm start > /app/access.log
