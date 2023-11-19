FROM node:18-alpine

RUN apk update # Update Alpine Linux Repos

RUN apk --no-cache add bash=5.2.15-r5 # Install BASH
RUN apk --no-cache add curl=8.4.0-r0 # Install cURL

RUN corepack enable # Enable Corepack (used for installing Yarn and pnpm later)
RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.0.12" # Install Bun (1.0.12)

RUN npm install --global npm@10.2.4 # Version-pin npm (10.2.4)
RUN corepack prepare yarn@3.7.0 --activate # Version-pin Yarn (3.7.0)
RUN corepack prepare pnpm@8.10.5 --activate # Version-pin pnpm (8.10.5)

RUN npm install --global serve@10.1.1 # Install Serve (10.1.1)

