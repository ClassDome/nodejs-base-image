FROM node:18-alpine

RUN apk --no-cache add curl # Install cURL

RUN corepack enable # Enable Corepack (used for installing Yarn and pnpm later)
RUN curl -fsSL https://bun.sh/install | sh -s "bun-v1.0.12" # Install Bun (1.0.12)

RUN npm install --global npm@10.2.4 # Version-pin npm (10.2.4)
RUN corepack install --global yarn@4.0.2 # Version-pin Yarn (4.0.2)
RUN corepack install --global pnpm@8.10.5 # Version-pin pnpm (8.10.5)

RUN npm install --global serve@10.1.1 # Install Serve (10.1.1)

