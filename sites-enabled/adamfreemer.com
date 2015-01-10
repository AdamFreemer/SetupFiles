
### adamfreemer.com config block ###
server {

    listen       80;
    server_name  adamfreemer.com
                 www.adamfreemer.com;

    location / {
         root   /var/www/adamfreemer.com;
         index  index.html index.htm;
    }

    error_page  404 /404.html;
    location = /404.html {
        root   /usr/share/nginx/html;
    }
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
