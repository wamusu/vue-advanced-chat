FROM node:lts-alpine

WORKDIR /app

RUN apk update && \
    apk add --no-cache git openssh

RUN apk add --no-cache python python-dev py-pip make g++ && \
    python -m pip install --upgrade pip && \
    python -m pip install --upgrade virtualenv

RUN npm install -g npm && \
    npm install -g @vue/cli

CMD ["/bin/ash"]
CMD ["npm", "install"]
CMD ["npm", "run", "dev"]
