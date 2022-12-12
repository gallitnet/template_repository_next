FROM node:latest

RUN mkdir -p /usr/app/
WORKDIR /usr/app

COPY . .
RUN rm -rf variables 
RUN npm install
RUN npm run build 


EXPOSE 3000
CMD ["npm","start"]