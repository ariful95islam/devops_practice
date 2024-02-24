# Nexus Installation on a Digital Ocean Droplet

This guide provides step-by-step instructions for installing Nexus Repository Manager on a Digital Ocean Droplet.

## Prerequisites

- A Digital Ocean account.
- A Droplet with at least 2GB of RAM (4GB recommended for better performance).
- Basic knowledge of Linux commands.
- An SSH client to connect to your Droplet.

## Step 1: Create Your Droplet

1. Log in to your Digital Ocean account.
2. Click on "Create" and select "Droplets".
3. Choose an image (Ubuntu 20.04 LTS is recommended).
4. Select the appropriate plan (at least 2GB of RAM).
5. Choose a data center region.
6. Add SSH keys for secure access.
7. Click "Create Droplet".

## Step 2: Access Your Droplet

1. Use SSH to connect to your Droplet:
   ```bash
   ssh root@your_droplet_ip
   ```

## Step 3: Update Your System

1. Update the package list:
   ```bash
   sudo apt update
   ```
2. Upgrade installed packages:
   ```bash
   sudo apt upgrade -y
   ```

## Step 4: Install Java

Nexus requires Java to run. Install OpenJDK 8:

```bash
sudo apt install openjdk-8-jdk -y
```

Verify the installation:

```bash
java -version
```

## Step 5: Download and Install Nexus

1. Navigate to the `/opt` directory:
   ```bash
   cd /opt
   ```
2. Download the latest Nexus Repository Manager OSS bundle from Sonatype:
   ```bash
   sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
   ```
3. Extract the archive:
   ```bash
   sudo tar -zxvf latest-unix.tar.gz
   ```
4. Rename the Nexus directory for convenience (Optional):
   ```bash
   sudo mv nexus-3.x.y-01 nexus
   ```
5. Change ownership of the Nexus files to the user you plan to run Nexus as (usually `nexus` user):
   ```bash
   sudo adduser nexus
   sudo chown -R nexus:nexus /opt/nexus
   sudo chown -R nexus:nexus /opt/sonatype-work
   ```

## Step 6: Configure Nexus as a Service

1. Create a systemd service file for Nexus:
   ```bash
   sudo nano /etc/systemd/system/nexus.service
   ```
2. Paste the following configuration:
   ```ini
   [Unit]
   Description=Nexus Repository Manager
   After=network.target

   [Service]
   Type=forking
   User=nexus
   ExecStart=/opt/nexus/bin/nexus start
   ExecStop=/opt/nexus/bin/nexus stop
   User=nexus
   Restart=on-abort

   [Install]
   WantedBy=multi-user.target
   ```
3. Enable and start the Nexus service:
   ```bash
   sudo systemctl enable nexus
   sudo systemctl start nexus
   ```

## Step 7: Access Nexus

1. Nexus starts on port `8081` by default. Access it via your browser:
   ```
   http://your_droplet_ip:8081
   ```
2. The default username is `admin` and the default password is located in:
   ```bash
   /opt/nexus/sonatype-work/nexus3/admin.password
   ```
3. Follow the setup wizard to configure Nexus.

## Conclusion

You have successfully installed Nexus Repository Manager on your Digital Ocean Droplet. For further configuration and usage details, refer to the [official Nexus documentation](https://help.sonatype.com/repomanager3).