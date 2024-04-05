# seting radius radboox

## 1 buat vpn dimenu setting (saran menggunakan sstp)

## sstp
/interface sstp-client
add connect-to=103.xxx.xxx.xxx port=4433 name=sstp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.xxx.xx.xx gateway=sstp-RadbooX

## l2tp
/interface pptp-client
add connect-to=103.xxx.xxx.xxx name=l2tp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.116.83.83 gateway=pptp-RadbooX

## pptp
/interface sstp-client
add connect-to=103.xxx.xxx.xxx name=pptp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.xxx.xx.xx gateway=pptp-RadbooX

## membuat radius diradboox
/radius
add address=103.116.83.83 secret="kosplay" service=ppp,hotspot,dhcp timeout=2000ms
/radius incoming
set accept=yes

## SNMP
/snmp community
set [ find default=yes ] disabled=yes
add addresses=103.116.83.82/32 name=RadbooX write-access=yes read-access=yes/
/snmp
set enabled=yes

## Membuat VPN Buat OLT ZTE
/ip firewall nat
add action=dst-nat chain=dstnat comment="generate By RadbooX"\
dst-address=172.29.2.161 dst-port=161,162 protocol=udp\
src-address=103.116.83.82 to-addresses=10.100.100.2

/ip firewall mangle
add action=mark-connection chain=prerouting comment="generate By RadbooX"\
dst-address=103.116.83.82 in-interface="400-MGMT-OLT C300" new-connection-mark=radboox passthrough=yes\
protocol=udp src-address=10.100.100.2 src-port=161,162
add action=mark-routing chain=prerouting comment="generate By RadbooX"\
connection-mark=radboox dst-address=103.116.83.82 in-interface="400-MGMT-OLT C300"\
new-routing-mark=radboox-olt passthrough=no protocol=udp\
src-address=10.100.100.2 src-port=161,162

/ip route
add comment="generate By RadbooX" distance=1 gateway=sstp-RadbooX-olt routing-mark=radboox-olt

# tambahan untuk routing buat olt ros v7
/routing table 
add name=radboox-olt fib
