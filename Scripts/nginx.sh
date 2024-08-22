
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/IMAGE_UPLOADER/nginx/nginx.conf /etc/nginx/sites-available/Image_Uploader
sudo ln -s /etc/nginx/sites-available/Image_Uploader /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

