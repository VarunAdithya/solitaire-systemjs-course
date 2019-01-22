FROM nginx:1.10.1-alpine
ENV http_proxy http://httppxgot.srv.volvo.com:8080
ENV https_proxy http://httppxgot.srv.volvo.com:8080
ENV ftp_proxy http://httppxgot.srv.volvo.com:8080


ADD app/ /usr/share/nginx/html
