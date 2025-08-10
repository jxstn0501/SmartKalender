FROM nodered/node-red:3.1.9

# Render erwartet, dass die App auf $PORT lauscht
ENV PORT=10000
EXPOSE 10000

# Flow bereitstellen
COPY flows.json /data/flows.json

ENV NODE_RED_ENABLE_PROJECTS=false
