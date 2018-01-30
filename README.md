# Shared CSS Library

The task is setup Ngnix reverse server for 2 sites with uniq port and during response, css style should be replaced from local resource.A sites you can deifine by yourself

# How to Test

### The steps how to use:
- Install NGNIX server
- Install module from requirements.txt
- Create ngnix config by template(on tepmlate all config defined,just need specify sites and path with css)
- Create link from ngnix config(as usually it's located on /etc/ngnix/ngnix.conf) to your directory with by the result from ngnix.conf.tpl(ngnix.conf)
- Restart the server
- Open browser and follow by 127.0.0.1:8000 и 127.0.0.1:8080


### Deploy on localhost

Example of frontend launch on Linux:

```bash

sudo apt-get install nginx

pip install -r requirements.txt

path_to_css_folder="Define_your_path"  first_site="input_site_name" second_site="input_site_name" envtpl < nginx.conf.tpl > ngnix.conf

ln -s /etc/nginx/nginx.conf /path_where_project_located/32_stylish_portal/nginx.conf

nginx -s reload

```

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
