FROM node:lts-buster

RUN git clone https://github.com/A4edits/AEXD-MD-PUBLIC /root/AlienAlfa
WORKDIR /root/AlienAlfa/

RUN npm install -g npm@8.9.0

RUN yarn install --no-audit

RUN apt-get update && apt-get upgrade -y 

RUN npm i -g heroku

CMD ["node", "index.js"]
