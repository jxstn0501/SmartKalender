FROM nodered/node-red:3.1.9

# Render erwartet, dass der Container auf $PORT (Standard: 10000) lauscht
ENV PORT=10000
EXPOSE 10000

# Zusätzliche Nodes (optional)
RUN npm install --no-update-notifier --no-fund --only=production \
    node-red-node-openai

# Flow bereitstellen
COPY flows.json /data/flows.json

ENV NODE_RED_ENABLE_PROJECTS=false
