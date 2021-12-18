#ip=hostname -I | awk '{print $1}'
#echo "my ip address: $ip"
#ip=ifconfig -a.
#echo $ip
curl 192.168.233.130:8080

echo "..." 
echo "applying curl hostname -I | awk '{print $1}'"
curl hostname -I | awk '{print $1}'
