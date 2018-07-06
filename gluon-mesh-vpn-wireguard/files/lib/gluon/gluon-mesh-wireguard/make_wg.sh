#Wenn Verzeichnis nicht  existiert, erzeugen
if [[ ! -e /etc/wireguard ]];
then
  mkdir -p /etc/wireguard
fi

# Wenn kein Key existiert, welche erzeugen
[ -f /etc/wireguard/wg_privatekey ] || wg genkey > /etc/wireguard/wg_privatekey && wg pubkey < /etc/wireguard/wg_privatekey > /etc/wireguard/wg_publickey

# Letzten vier Stellen der IPV6-Adresse aufgrund der Mac bilden
IP=$(cut -f 3-6 -d ':' /sys/class/net/eth0/address)

echo $IP

# Public Key und IP zu bonn2 hochladen
curl --data-urlencode "pubkey="$(cat /etc/wireguard/wg_publickey) --data-urlencode "ip="$IP   https://bonn2.kbu.freifunk.net/wireguard.php

ip link add dev wg0 type wireguard
ip address add dev wg0  fd58:1678:bca7:7918:$IP/64
wg set wg0 private-key /etc/wireguard/wg_privatekey
wg set wg0 peer MwgDvHjM9GuBCeySqbcbhu2hrYaB5hkMA35OZKz0inM= persistent-keepalive 25 allowed-ips fd58:1678:bca7:7918::2/128 endpoint 163.172.107.146:10020
ip link set up dev wg0
ip link add gre type ip6gretap local fd58:1678:bca7:7918:$IP remote fd58:1678:bca7:7918::2
ip link set up dev gre
batctl if add gre

