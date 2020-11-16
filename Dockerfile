FROM node:14.15.0-alpine AS builder

ENV NODE_ENV production
COPY index.js yarn.lock package.json LICENSE /build/
WORKDIR /build
RUN yarn install --production

FROM node:14.15.0-alpine

ENV NODE_ENV production
COPY --chown=node:node --from=builder /build /home/node/bitcoind-exporter
RUN ln -s /home/node/bitcoind-exporter/index.js /usr/local/bin/bitcoind-exporter
USER node
CMD ["bitcoind-exporter"]
