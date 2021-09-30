#!/bin/sh
sudo mkdir -p /opt/microrain
sudo chmod 777 /opt/microrain
wget https://assets.checkra.in/downloads/linux/cli/arm64/43019a573ab1c866fe88edb1f2dd5bb38b0caf135533ee0d6e3ed720256b89d0/checkra1n -O /opt/microrain/checkra1n
sudo chmod +x /opt/microrain/checkra1n
echo "Microrain downloaded all dependencies, setting up..."	
sudo cp checkra1n.service /etc/systemd/system
sudo chmod +x Xcheckra1n
sudo cp Xcheckra1n /opt/microrain
sudo systemctl enable checkra1n
sudo systemctl start checkra1n
echo "All done! Status on how checkra1n service is working you can get by running systemctl status checkra1n"
echo "Also, restarting your system is recommended, but not mandatory"
