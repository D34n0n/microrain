#!/bin/sh
sudo mkdir -p /opt/microrain
sudo chmod 777 /opt/microrain
wget https://assets.checkra.in/downloads/linux/cli/arm/ff05dfb32834c03b88346509aec5ca9916db98de3019adf4201a2a6efe31e9f5/checkra1n -O /opt/microrain/checkra1n
sudo chmod +x /opt/microrain/checkra1n
echo "Microrain downloaded all dependencies, setting up..."	
sudo cp checkra1n.service /etc/systemd/system
sudo chmod +x Xcheckra1n
sudo cp Xcheckra1n /opt/microrain
sudo systemctl enable checkra1n
sudo systemctl start checkra1n
echo "All done! Status on how checkra1n service is working you can get by running systemctl status checkra1n"
echo "Also, restarting your system is recommended, but not mandatory"
