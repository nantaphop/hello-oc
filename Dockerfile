FROM node:alpine
COPY . .
RUN ([ -z $HTTPS_PROXY ] || npm config set https-proxy $HTTPS_PROXY) && \
    ([ -z $HTTP_PROXY ] || npm config set proxy $HTTP_PROXY)
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]