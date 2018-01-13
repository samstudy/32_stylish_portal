# Shared CSS Library

The task is setup Ngnix reverse server for 2 sites with uniq port and during response, css style should be replaced from local resource

# How to Test

### The steps how to use:
- Install NGNIX server
- Create link from ngnix config(as usually it's located on /etc/ngnix/ngnix.conf) to your directory with project
- Restart the server
- Open 127.0.0.1:8001 и 127.0.0.1:8002.


### Deploy on localhost

Example of frontend launch on Linux:

```bash

sudo apt-get install nginx
ln -s /etc/nginx/nginx.conf /path_where_project_located/32_stylish_portal/nginx.conf
nginx -s reload

```

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
