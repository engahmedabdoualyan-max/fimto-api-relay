FROM node:22-bookworm-slim
WORKDIR /app
COPY fimto-api.tgz /tmp/bundle.tgz
RUN tar -xzf /tmp/bundle.tgz -C /app && rm -f /tmp/bundle.tgz && test -f /app/server.js
ENV NODE_ENV=production
ENV HOSTNAME=0.0.0.0
ENV PORT=10000
EXPOSE 10000
CMD ["node", "server.js"]
