FROM nginx:1.10.1-alpine
ENV http_proxy http://httppxgot.srv.volvo.com:8080
ENV https_proxy http://httppxgot.srv.volvo.com:8080
ENV ftp_proxy http://httppxgot.srv.volvo.com:8080
COPY package.json /app
RUN npm install
COPY . /app
CMD node index.js
EXPOSE 8081


ADD app/ /usr/share/nginx/html
