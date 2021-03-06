user www-data;
worker_processes 1;
pid /run/nginx.pid;

events {
    worker_connections 768;
    # multi_accept on;
}

http {
    include /etc/nginx/mime.types;
    # Logging Settings

    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;

    server {
        listen 8000;
        server_name 127.0.0.1;

        location ~* style.css {
        # Put path to folder with style.css. Sample: "/media/sf_prj/32_stylish_portal/dist"
            root {{path_to_css_folder}};
        }

        location / {
            proxy_pass {{first_site}};
        }
      }

    server {
        listen 8080;
        server_name 127.0.0.1;

        location ~* style.css {
        # Put path to folder with style.css. Sample: "/media/sf_prj/32_stylish_portal/dist"
            root {{path_to_css_folder}};
        }

        location / {
            proxy_pass {{second_site}};
        }
      }
