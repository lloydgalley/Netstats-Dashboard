FROM node:18.10.0-alpine3.15

# Specify app folder
WORKDIR /app

# Specify build args
ARG PAGE_TITLE

COPY package.json .

# Install dependencies
RUN npm install

RUN npm install grunt-cli -g

# Copy all files
COPY . .

RUN grunt

# Run!
CMD ["npm", "start"]
