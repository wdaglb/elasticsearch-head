FROM node:alpine
WORKDIR /usr/src/app
RUN yarn config set registry https://registry.npm.taobao.org && yarn add http-server
COPY . .
EXPOSE 9100
CMD node_modules/http-server/bin/http-server _site -p 9100
