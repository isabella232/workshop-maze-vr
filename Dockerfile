FROM node:6-wheezy
RUN wget --no-parent --no-check-certificate https://github.com/fbrnc/workshop-maze-vr/archive/light.tar.gz -O - | tar xz --strip-components=1
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]
