FROM node:23

ENV UNREALVERSION="5.3"

RUN mkdir /report-site

COPY Automation/${UNREALVERSION}/* /report-site

WORKDIR /report-site

RUN npm install http-server bower -g

RUN bower install

# Run the http server
CMD ["http-server"]