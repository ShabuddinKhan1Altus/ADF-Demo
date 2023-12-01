mkdir /tmp/crowdstrike
cd /tmp/crowdstrike
curl -k 'https://stappnpeunotf01.blob.core.windows.net/crowdstrike/falcon-sensor-7.05.0-16004.el8.x86_64.rpm?sp=r&st=2023-12-01T11:20:54Z&se=2023-12-01T19:20:54Z&spr=https&sv=2022-11-02&sr=b&sig=3qFmoHx0%2BYzrFwdls8zIztNtb4QEmS4ruEjoGe0MDC0%3D' --output 'falcon-sensor-7.05.0-16004.el8.x86_64.rpm'
ls -ltr
dpkg --help
#sudo dpkg -i falcon-sensor-7.05.0-16004.el8.x86_64.rpm
#sudo /opt/CrowdStrike/falconctl -s --cid=86B2879505B640F583CBC4D47D5E82F1-88
#service falcon-sensor start
#systemctl start falcon-sensor
