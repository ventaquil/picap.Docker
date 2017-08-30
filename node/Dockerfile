FROM node

# Install gulp
RUN npm install -g gulp

# Set Picap environment variables
ENV PICAP_PORT 80

ENV PICAP_MONGODB_SERVER mongodb

ENV PICAP_MONGODB_DATABASE picap

# Copy wait shell script
COPY ./wait.sh /wait.sh

# Wait for application
CMD /wait.sh

