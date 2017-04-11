FROM alpine:3.1

# Update
RUN apk add --update nodejs

# Install app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install;cd ..

# Bundle app source
COPY . /src

EXPOSE  3000
CMD ["node", "/src/index.js"]