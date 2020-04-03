FROM node:lts
RUN npm install -g docsify-cli@4

# https://github.com/docsifyjs/docsify-cli/issues/78
RUN apt-get update \
	&& apt-get install --no-install-recommends -y dos2unix=7.3.4-3 \
	&& dos2unix /usr/local/lib/node_modules/docsify-cli/bin/docsify \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3005
USER node

WORKDIR /usr/src/app

ENTRYPOINT docsify serve -p 3005 .
