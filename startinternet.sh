# The IP block needs to be different than your wireless connection's
# Change it to something else if your laptop is also on 192.168.1.x network
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
sudo ip ad ad 192.168.1.1/24 dev tap0
sudo ip link set tap0 up
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo /etc/init.d/dnsmasq start
