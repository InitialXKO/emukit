FROM node:12
# To note: Layerfiles create VMs, *not* containers!

# Install node
#RUN curl -sL https://deb.nodesource.com/setup_12.x | bash && \
#    apt install nodejs && \
#    rm -f /etc/apt/sources.list.d/nodesource.list
# -g http-server

COPY . .
RUN npm install 
RUN npm start

#RUN BACKGROUND http-server -p 8000
EXPOSE WEBSITE http://localhost:8000
CMD ["node", "index.js"]
