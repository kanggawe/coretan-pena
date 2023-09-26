# route recrusive pindah gw dengan cek ip tujuan 8.8.8.8 melalui gw yang diset 
/ip route
add check-gateway=ping distance=1 gateway=8.8.8.8 target-scope=30
add check-gateway=ping distance=2 gateway=8.8.4.4 target-scope=50
add check-gateway=ping distance=1 dst-address=8.8.4.4/32 gateway=10.25.26.1 scope=50
add check-gateway=ping distance=1 dst-address=8.8.8.8/32 gateway=192.168.212.1
