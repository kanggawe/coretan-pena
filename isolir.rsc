/ip firewall nat
add action=dst-nat chain=dstnat disabled=yes dst-port=53 protocol=udp \
    to-addresses=208.67.222.222 to-ports=443
add action=dst-nat chain=dstnat disabled=yes dst-port=53 protocol=udp \
    to-addresses=208.67.220.220 to-ports=443
#setingan web proxy isolir
add action=redirect chain=dstnat comment="Generate - Isolir WebProxy" \
    dst-address=!103.28.52.101 dst-port=80,443,8080 protocol=tcp \
    src-address-list=ISOLIR to-ports=8081
add action=redirect chain=dstnat comment="Generate - Isolir WebProxy" \
    dst-address=!103.147.51.34 dst-port=80,443,8080 protocol=tcp \
    src-address-list=ISOLIR to-ports=8081
add action=redirect chain=dstnat dst-port=80,443,8080 protocol=tcp \
    src-address-list=ISOLIR to-ports=8081
add action=redirect chain=dstnat dst-port=80,443,8080 protocol=udp \
    src-address-list=ISOLIR to-ports=8081