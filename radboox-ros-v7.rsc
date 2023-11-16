##seting radius radboox

# 1 buat vpn dimenu setting (saran menggunakan sstp)

# sstp
/interface sstp-client
add connect-to=103.xxx.xxx.xxx port=4433 name=sstp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.xxx.xx.xx gateway=sstp-RadbooX

# l2tp
/interface pptp-client
add connect-to=103.xxx.xxx.xxx name=l2tp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.116.83.83 gateway=pptp-RadbooX

# pptp
/interface sstp-client
add connect-to=103.xxx.xxx.xxx name=pptp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.xxx.xx.xx gateway=pptp-RadbooX

@membuat radius diradboox
/radius
add address=103.116.83.83 secret="kosplay" service=ppp,hotspot,dhcp timeout=2000ms
/radius incoming
set accept=yes

@!SNMP
/snmp community
set [ find default=yes ] disabled=yes
add addresses=103.116.83.82/32 name=RadbooX write-access=yes read-access=yes
/snmp
set enabled=yes

##Membuat VPN Buat OLT ZTE



#tambahan untuk routing buat olt 
/routing table 
add name=radboox-olt fib
