echo "Create directory /tmp/crowdstrike"
mkdir /tmp/crowdstrike

echo "Change directory /tmp/crowdstrike"
cd /tmp/crowdstrike

echo "Download crowdstrike agent"
curl -k 'https://stappnpeunotf01.blob.core.windows.net/crowdstrike/falcon-sensor_7.05.0-16004_amd64.deb?sp=r&st=2023-12-01T15:30:12Z&se=2023-12-01T23:30:12Z&sip=20.166.128.74&spr=https&sv=2022-11-02&sr=b&sig=GBOGxFoKv2Myu%2BrjWFjZ9evx9mTYlpsh6oYVBbiE2QY%3D' --output 'falcon-sensor_7.05.0-16004_amd64.deb'
# ls -ltr
# dpkg --help
echo "sleep for 10 seconds - start"
sleep 10
echo "sleep for 10 seconds - completed"

echo "Install package"
sudo dpkg -i falcon-sensor_7.05.0-16004_amd64.deb

echo "sleep for 10 seconds - start"
sleep 10
echo "sleep for 10 seconds - completed"

echo "Register agent with CrowdStrike"
sudo /opt/CrowdStrike/falconctl -s --cid=86B2879505B640F583CBC4D47D5E82F1-88

echo "sleep for 10 seconds - start"
sleep 10
echo "sleep for 10 seconds - completed"

echo "Start falcon sensor"
service falcon-sensor start

echo "sleep for 10 seconds - start"
sleep 10
echo "sleep for 10 seconds - completed"

echo "Start falcon sensor - startup"
systemctl start falcon-sensor

echo "Installation completed."