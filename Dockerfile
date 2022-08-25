FROM      node
RUN       useradd roboshop
RUN       mkdir /app
RUN       chown roboshop /app
WORKDIR   /app
USER      roboshop

ADD         server.js /app
ADD         node_modules/ /app/node_modules
ADD         https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem rds-combined-ca-bundle.pem
ENTRYPOINT  ["node", "server.js"]
