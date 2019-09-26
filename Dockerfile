FROM node:alpine
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
oc