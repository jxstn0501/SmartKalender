FROM nodered/node-red:3.1.9

# Zusätzliche Nodes installieren (nur wenn nötig)
RUN npm install --no-update-notifier --no-fund --only=production \
    node-red-node-openai

# Flows ins Datenverzeichnis kopieren
COPY flows.json /data/flows.json

ENV NODE_RED_ENABLE_PROJECTS=false
