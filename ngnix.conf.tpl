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
        listen {{first_port}};
        server_name {{server_ip}};

        location ~* style.css {
        # Put path to folder with style.css. Sample: "/media/sf_prj/32_stylish_portal/dist"
            root {{path_to_folder}};
        }

        location / {
            proxy_pass {{first_site}};
        }
      }

    server {
        listen {{second_port}};
        server_name {{server_ip}};

        location ~* style.css {
        # Put path to folder with style.css. Sample: "/media/sf_prj/32_stylish_portal/dist"
            root {{path_to_folder}};
        }

        location / {
            proxy_pass {{second_site}};
        }
      }
