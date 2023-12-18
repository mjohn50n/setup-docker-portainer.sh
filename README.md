# setup-docker-portainer.sh
Script that will install and configure the latest versions of Docker and Portainer on Ubuntu 22.04

Usage:
Save this script as setup-docker-portainer.sh.
Give it execute permissions with chmod +x setup-docker-portainer.sh.
Run the script with sudo ./setup-docker-portainer.sh.
Important Notes:
This script assumes a standard Ubuntu 22.04 setup and may need modifications based on your specific environment.
For production environments, you should review Docker and Portainer documentation for security best practices.
Always test scripts in a safe environment before running them on a production server.
The script installs Docker Compose as an optional component. If not needed, you can comment out or remove that section.
Portainer will be accessible at http://your-server-ip:9000. Be sure to secure it properly.
