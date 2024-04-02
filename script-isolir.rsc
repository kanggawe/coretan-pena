####### untuk R0S v7 ############
/ip proxy
set enabled=yes
/ip proxy access
add action=redirect action-data=isolir.radboox.com src-address=172.30.0.0/16

ip firewall nat
add action=redirect chain=dstnat comment="Generate RadbooX - Isolir WebProxy" disabled=no \
dst-address="!103.116.83.80/29" dst-port="80,443" protocol=tcp \
src-address="172.30.0.0/16" to-ports="8080"

/ip firewall filter
add action=drop chain=forward comment="Generate RadbooX - Isolir WebProxy" dst-address="!103.116.83.80/29" protocol=tcp src-address="172.30.0.0/16"
add action=drop chain=forward comment="Generate RadbooX - Isolir WebProxy" dst-address="!103.116.83.82" dst-port=!53,5353 protocol=udp src-address="172.30.0.0/16"

####### End untuk R0S v7 ############

####### End untuk R0S v6 ############
/ip proxy
set enabled=yes parent-proxy=0.0.0.0 port="8080"
/ip proxy access
add action=deny dst-host="!radboox.com" redirect-to="isolir.radboox.com" src-address="172.30.0.0/16"

/ip firewall nat
add action=redirect chain=dstnat comment="Generate RadbooX - Isolir WebProxy" disabled=no \
dst-address="!103.116.83.80/29" dst-port="80,443" protocol=tcp \
src-address="172.30.0.0/16" to-ports="8080"

/ip firewall filter
add action=drop chain=forward comment="Generate RadbooX - Isolir WebProxy" dst-address="!103.116.83.80/29" protocol=tcp src-address="172.30.0.0/16"
add action=drop chain=forward comment="Generate RadbooX - Isolir WebProxy" dst-address="!103.116.83.82" dst-port=!53,5353 protocol=udp src-address="172.30.0.0/16"

####### End untuk R0S v6 ############

###### Add On untuk hotspot #########

/ip firewall address-list
add address=isolir.radboox.com list=radboox

#jika menggunakan fitur hotspot
/ip hotspot walled-garden ip
add action=accept dst-address=103.116.83.80/29

###### End Add On untuk hotspot #########
