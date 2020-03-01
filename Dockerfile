FROM node:12.16.1

LABEL maintainer="Jakkrapan Wongchan"

WORKDIR /usr/src/app

COPY . .
RUN npm install

# Copy startup to run
ADD ./startup.sh /opt/startup.sh
RUN sed -i 's/\r//g' /opt/startup.sh

CMD ["/bin/bash", "/opt/startup.sh"]
EXPOSE 3000
