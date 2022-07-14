FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 9022
CMD ["node", "sftp-gcs.js", "--bucket", "gcptestupload1", "--port", "9022","--user", "us6en73j", "--password", "Oc41M5hQ5l3o8g7LT2idIPlY1B1u7wraTUTLTBxxeyxiQ4IULZ", "--debug", "debug"]