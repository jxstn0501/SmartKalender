FROM nodered/node-red:3.1.9

RUN npm install --no-update-notifier --no-fund --only=production \
    node-red-node-openai node-red-node-google

COPY flows.json /data/flows.json

ENV NODE_RED_ENABLE_PROJECTS=false
