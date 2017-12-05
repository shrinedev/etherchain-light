FROM node:8.6.0

# use changes to package.json to force Docker not to use the cache
# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# From here we load our application's code in, therefore the previous docker
# "layer" thats been cached will be used if possible
COPY . /explorer/
RUN cd /explorer/ \
    && cp -a /tmp/node_modules /explorer/

WORKDIR /explorer/

CMD ["npm","start"]
