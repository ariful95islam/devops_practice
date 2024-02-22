#### This project is for the Devops bootcamp exercise for

#### "Cloud Basics"

##### Steps
* Create a droplet on digital ocean 
* Copy install_npm.sh into droplet using scp ```scp install_npm.sh root@droplet_ip_address```
* SSH into droplet via ssh ```root@droplet_ip_address:/root```
* Then make it executable ```chmod +x install_npm.sh```
* Then run via ```./install_npm.sh```
* Now on local ```npm pack``` the app and then copy packaged app to droplet
* ssh back into droplet
* Now unpack .tgz via ```tar -zxvf bootcamp-node-project-1.0.0.tgz```
* cd into the package folder
* Install app via ```npm install```
* Run app via ```node server.js``` hint: you may need to npm install certain module(s) 
* use terminal or digital ocean ui to open port 3000 on tcp
* access app via broswer on https://ip:3000