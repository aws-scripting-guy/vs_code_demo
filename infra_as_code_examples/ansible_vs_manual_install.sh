root@server:~# # Install the PGP key
root@server:~# gpg --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
root@server:~# gpg --armor --export 561F9B9CAC40B2F7 | sudo apt-key add -

root@server:~# # Install https support for apt
root@server:~# apt-get install apt-transport-https

root@server:~# # Add the passenger apt repository
root@server:~# vi /etc/apt/sources.list.d/passenger.list
root@server:~# chown root: /etc/apt/sources.list.d/passenger.list
root@server:~# chmod 600 /etc/apt/sources.list.d/passenger.list

root@server:~# # Update the apt cache so we can use the new repo
root@server:~# apt-get update

root@server:~# # Install nginx
root@server:~# apt-get install nginx-full passenger

root@server:~# # Set up passenger in the nginx configuration
root@server:~# vi /etc/nginx/nginx.conf

root@server:~# # Start nginx
root@server:~# service nginx restart