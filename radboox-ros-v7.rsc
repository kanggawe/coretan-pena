/interface/sstp-client
add connect-to=103.xxx.xxx.xxx port=4433 name=sstp-RadbooX password="isisikan sesuai yang anda buat " user=jxn disabled=no  
/ip route
add disabled=no distance=1 dst-address=103.xxx.xx.xx gateway=sstp-RadbooX


#tambahan untuk routing buat olt 
routing/table/
add name=radboox-olt fib
