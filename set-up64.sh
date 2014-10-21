# Install Transmission Daemon Fully
# Direcory Download From Server
# File manager IPVPS/9009 File Direct IPVPS/9009/files

cd /etc/yum.repos.d/
wget http://geekery.altervista.org/geekery-el6-x86_64.repo
yum -y install transmission*
service transmission-daemon start
service transmission-daemon stop
rm -f /var/lib/transmission/settings.json
cd /var/lib/transmission/
wget -O settings.json "https://raw.githubusercontent.com/thomijasir/TransmissionCentos/master/settings.json"
cd
mkdir /var/www/html/9009
cd /var/www/html/9009
wget http://www.optimashell.com/bin/vps/file.zip
unzip file.zip
cd
chmod 777 /var/www/html/9009/files -R
chmod 777 /var/www/html/9009 -R
cd
chown -R transmission.transmission /var/www/html/9009
service transmission-daemon reload
service httpd restart
