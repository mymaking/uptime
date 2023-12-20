FROM node:20

RUN useradd -m -u 1010 user 
WORKDIR /home/user
RUN git clone https://github.com/louislam/uptime-kuma
WORKDIR /home/user/uptime-kuma
RUN npm run setup
EXPOSE 3001
CMD node server/server.js
