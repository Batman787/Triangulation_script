sudo apt install hostapd

sudo systemctl unmask hostapd
sudo systemctl enable hostapd

sudo apt install dnsmasq

sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent

sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo netfilter-persistent save

sudo rfkill unblock wlan

sudo echo "country_code=GB
country_code=GB
interface=wlan0
ssid=Abraham Linksys (AP1)
hw_mode=g
channel=7
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=Admin123!
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP" >> /etc/hostapd/hostapd.conf

sudo systemctl restart hostapd