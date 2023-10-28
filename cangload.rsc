# oct/28/2023 14:07:33 by RouterOS 6.44.6
# software id = SCC2-SJZ1
#
# model = RB750Gr3
# serial number = CC210BFD5366
/interface bridge
add disabled=yes name=bridge1
/interface vlan
add interface=ether2 name=vlan2704 vlan-id=2704
/ppp profile
add name=2M rate-limit=2m/2m
/queue simple
add max-limit=2M/2M name="BIBI NE MAMAS" target=10.253.9.252/32
/interface bridge port
add bridge=bridge1 disabled=yes interface=ether3
add bridge=bridge1 disabled=yes interface=ether4
/interface pppoe-server server
add disabled=no interface=bridge1 service-name=service1
add disabled=no interface=ether3 service-name=service2
/ip address
add address=185.185.113.253/24 interface=ether2 network=185.185.113.0
add address=192.168.121.253/24 interface=ether1 network=192.168.121.0
add address=10.253.9.1/24 interface=ether3 network=10.253.9.0
add address=10.13.11.2/30 interface=vlan2704 network=10.13.11.0
/ip dns
set allow-remote-requests=yes servers=8.8.8.8,8.8.4.4
/ip firewall address-list
add address=192.168.121.0/24 list=Client+ISP
add address=10.13.11.0/30 list=Client+ISP
add address=10.13.14.0/24 list=private-local
add address=185.185.113.0/24 list=Client+ISP
add address=10.253.9.0/24 list=Client+ISP
add address=118.98.77.98 list=tiktok
add address=23.38.195.18 list=tiktok
add address=34.117.214.157 list=tiktok
add address=184.25.236.107 list=tiktok
add address=18.67.172.51 list=tiktok
add address=118.98.77.136 list=tiktok
add address=184.25.236.145 list=tiktok
add address=184.25.236.129 list=tiktok
add address=23.38.195.155 list=tiktok
add address=184.25.236.210 list=tiktok
add address=18.154.7.45 list=tiktok
add address=104.17.114.189 list=tiktok
add address=18.154.7.96 list=tiktok
add address=18.64.37.103 list=tiktok
add address=71.18.36.225 list=tiktok
add address=184.25.236.8 list=tiktok
add address=34.111.174.196 list=tiktok
add address=35.186.203.63 list=tiktok
add address=34.117.97.41 list=tiktok
add address=34.149.173.23 list=tiktok
add address=156.236.20.15 list=tiktok
add address=192.168.121.253 list=tiktok
add address=34.117.36.110 list=tiktok
add address=118.98.77.153 list=tiktok
add address=23.38.195.136 list=tiktok
add address=180.240.234.241 list=tiktok
add address=18.154.7.66 list=tiktok
add address=101.33.5.79 list=tiktok
add address=101.33.5.31 list=tiktok
add address=130.44.212.232 list=tiktok
add address=108.138.141.30 list=tiktok
add address=71.18.74.198 list=tiktok
add address=23.38.195.107 list=tiktok
add address=23.38.195.128 list=tiktok
add address=23.38.195.129 list=tiktok
add address=23.214.169.196 list=tiktok
add address=23.38.195.113 list=tiktok
add address=43.152.161.242 list=tiktok
add address=23.50.117.169 list=tiktok
add address=125.56.219.43 list=tiktok
add address=192.168.121.0/24 list=private-local
add address=10.13.11.0/30 list=private-local
add address=10.13.14.0/24 list=Client+ISP
add address=10.253.9.0/24 list=private-local
add address=185.185.113.0/24 list=private-local
add address=23.48.173.242 list=tiktok
add address=163.181.18.229 list=tiktok
add address=163.181.18.225 list=tiktok
add address=163.181.18.230 list=tiktok
add address=206.84.112.28 list=tiktok
add address=23.50.117.176 list=tiktok
add address=23.50.117.177 list=tiktok
add address=23.50.117.178 list=tiktok
add address=163.181.18.226 list=tiktok
add address=23.56.239.88 list=tiktok
add address=184.87.193.86 list=tiktok
add address=23.38.195.176 list=tiktok
add address=23.216.158.179 list=tiktok
add address=34.111.101.25 list=tiktok
add address=23.48.173.26 list=tiktok
add address=45.121.219.233 list=tiktok
add address=23.48.173.18 list=tiktok
add address=23.56.239.131 list=tiktok
add address=23.56.239.162 list=tiktok
add address=23.214.169.199 list=tiktok
add address=23.56.239.91 list=tiktok
add address=13.33.88.79 list=tiktok
add address=23.56.239.114 list=tiktok
add address=130.44.212.234 list=tiktok
add address=23.56.239.138 list=tiktok
add address=206.84.112.20 list=tiktok
add address=118.98.77.170 list=tiktok
add address=34.149.219.180 list=tiktok
add address=184.25.236.185 list=tiktok
add address=184.25.236.24 list=tiktok
add address=184.25.236.96 list=tiktok
add address=23.50.117.184 list=tiktok
add address=23.50.117.203 list=tiktok
add address=184.25.236.16 list=tiktok
add address=23.214.169.212 list=tiktok
add address=184.25.236.34 list=tiktok
add address=206.84.112.30 list=tiktok
add address=23.210.250.82 list=tiktok
add address=23.39.173.104 list=tiktok
add address=23.48.173.17 list=tiktok
add address=184.25.236.216 list=tiktok
add address=184.25.236.163 list=tiktok
add address=23.48.173.211 list=tiktok
add address=184.25.236.195 list=tiktok
add address=184.25.236.193 list=tiktok
add address=184.25.236.184 list=tiktok
add address=23.216.158.193 list=tiktok
add address=18.67.172.112 list=tiktok
add address=18.155.68.75 list=tiktok
add address=23.38.195.146 list=tiktok
add address=184.25.236.25 list=tiktok
add address=114.125.112.82 list=tiktok
add address=18.155.68.114 list=tiktok
add address=45.121.219.217 list=tiktok
add address=23.48.173.24 list=tiktok
add address=34.110.200.237 list=tiktok
add address=130.44.212.235 list=tiktok
add address=103.147.212.111 list=tiktok
add address=23.214.169.209 list=tiktok
add address=23.56.239.161 list=tiktok
add address=18.155.68.20 list=tiktok
add address=23.48.173.11 list=tiktok
add address=23.48.173.8 list=tiktok
add address=114.125.82.114 list=tiktok
add address=23.39.173.91 list=tiktok
add address=23.56.239.136 list=tiktok
add address=104.17.113.189 list=tiktok
add address=23.50.117.10 list=tiktok
add address=23.56.239.120 list=tiktok
add address=23.48.173.216 list=tiktok
add address=23.56.239.168 list=tiktok
add address=206.84.112.21 list=tiktok
add address=199.103.24.2 list=tiktok
add address=23.56.239.123 list=tiktok
add address=23.39.173.83 list=tiktok
add address=71.18.36.224 list=tiktok
add address=23.56.239.155 list=tiktok
add address=163.181.18.223 list=tiktok
add address=101.33.4.113 list=tiktok
add address=199.232.234.73 list=tiktok
add address=13.33.33.68 list=tiktok
add address=34.102.147.19 list=tiktok
add address=23.236.99.96 list=tiktok
add address=23.56.239.139 list=tiktok
add address=23.214.169.226 list=tiktok
add address=43.152.160.232 list=tiktok
add address=23.39.173.106 list=tiktok
add address=23.39.173.66 list=tiktok
add address=156.59.76.168 list=tiktok
add address=23.214.169.225 list=tiktok
add address=38.60.187.20 list=tiktok
add address=23.214.169.202 list=tiktok
add address=156.59.192.178 list=tiktok
add address=163.181.18.228 list=tiktok
add address=23.214.169.228 list=tiktok
add address=36.91.254.100 list=tiktok
add address=87.119.3.90 list=tiktok
add address=129.227.42.50 list=tiktok
add address=23.56.239.128 list=tiktok
add address=163.181.18.224 list=tiktok
add address=23.56.239.147 list=tiktok
add address=23.214.169.211 list=tiktok
add address=23.48.173.10 list=tiktok
add address=151.101.110.73 list=tiktok
add address=23.50.117.162 list=tiktok
add address=23.50.117.11 list=tiktok
add address=18.155.68.102 list=tiktok
add address=199.232.46.73 list=tiktok
add address=13.224.250.114 list=tiktok
add address=43.152.160.234 list=tiktok
add address=23.39.173.67 list=tiktok
add address=23.48.173.25 list=tiktok
add address=23.56.239.171 list=tiktok
add address=156.240.94.46 list=tiktok
add address=23.222.26.41 list=tiktok
add address=23.48.173.19 list=tiktok
add address=184.25.236.59 list=tiktok
add address=45.121.219.224 list=tiktok
add address=34.36.65.236 list=tiktok
add address=23.56.239.97 list=tiktok
add address=23.48.173.104 list=tiktok
add address=23.56.239.121 list=tiktok
add address=23.56.239.154 list=tiktok
add address=45.121.219.210 list=tiktok
add address=18.155.68.25 list=tiktok
add address=217.198.191.52 list=tiktok
add address=23.56.239.185 list=tiktok
add address=23.39.173.107 list=tiktok
add address=45.121.219.218 list=tiktok
add address=45.121.219.201 list=tiktok
add address=129.227.42.57 list=tiktok
add address=23.56.239.163 list=tiktok
add address=23.56.239.105 list=tiktok
add address=129.227.47.231 list=tiktok
add address=23.48.173.98 list=tiktok
add address=23.39.173.115 list=tiktok
add address=23.48.173.88 list=tiktok
add address=23.56.239.122 list=tiktok
add address=156.59.248.12 list=tiktok
add address=34.36.80.120 list=tiktok
add address=103.147.213.32 list=tiktok
add address=23.56.239.146 list=tiktok
add address=23.48.173.145 list=tiktok
add address=23.48.173.146 list=tiktok
add address=101.33.5.103 list=tiktok
add address=23.48.173.16 list=tiktok
add address=23.48.173.9 list=tiktok
add address=167.82.86.73 list=tiktok
add address=23.39.173.90 list=tiktok
add address=23.56.239.115 list=tiktok
add address=103.160.155.89 list=tiktok
add address=129.227.42.125 list=tiktok
add address=114.122.65.112 list=tiktok
add address=23.39.173.97 list=tiktok
add address=114.122.98.67 list=tiktok
add address=45.195.3.227 list=tiktok
add address=36.91.255.79 list=tiktok
add address=23.43.248.91 list=tiktok
add address=23.56.239.160 list=tiktok
add address=23.39.173.145 list=tiktok
add address=23.48.173.243 list=tiktok
add address=23.39.173.122 list=tiktok
add address=23.39.173.130 list=tiktok
add address=23.39.173.144 list=tiktok
add address=23.48.173.240 list=tiktok
add address=23.39.173.123 list=tiktok
add address=23.39.173.74 list=tiktok
add address=206.84.112.15 list=tiktok
add address=45.121.219.211 list=tiktok
add address=45.121.219.232 list=tiktok
add address=23.56.239.193 list=tiktok
add address=13.33.33.8 list=tiktok
add address=23.56.239.106 list=tiktok
add address=23.56.239.90 list=tiktok
add address=23.56.239.187 list=tiktok
add address=23.214.169.204 list=tiktok
add address=206.84.112.27 list=tiktok
add address=129.227.42.124 list=tiktok
add address=23.56.239.177 list=tiktok
add address=13.33.88.127 list=tiktok
add address=23.39.173.138 list=tiktok
add address=45.121.219.226 list=tiktok
add address=130.44.212.236 list=tiktok
add address=154.81.48.242 list=tiktok
add address=199.103.24.4 list=tiktok
add address=36.91.254.47 list=tiktok
add address=199.103.24.6 list=tiktok
add address=18.161.49.70 list=tiktok
add address=13.33.33.22 list=tiktok
add address=38.60.187.22 list=tiktok
add address=129.227.42.120 list=tiktok
add address=23.48.173.241 list=tiktok
add address=23.48.173.234 list=tiktok
add address=199.103.24.8 list=tiktok
add address=23.214.169.222 list=tiktok
add address=129.227.42.56 list=tiktok
add address=23.214.169.200 list=tiktok
add address=23.48.173.217 list=tiktok
add address=23.56.239.107 list=tiktok
add address=23.48.173.210 list=tiktok
add address=206.84.112.19 list=tiktok
add address=45.121.219.200 list=tiktok
add address=34.102.164.249 list=tiktok
add address=118.98.77.122 list=tiktok
add address=184.25.236.113 list=tiktok
add address=184.25.236.153 list=tiktok
add address=184.25.236.19 list=tiktok
add address=184.25.236.41 list=tiktok
add address=184.25.236.27 list=tiktok
add address=23.56.239.192 list=tiktok
add address=184.25.236.49 list=tiktok
add address=184.25.236.170 list=tiktok
add address=184.25.236.114 list=tiktok
add address=184.25.236.203 list=tiktok
add address=23.214.169.231 list=tiktok
add address=112.198.9.48 list=tiktok
add address=34.96.106.127 list=tiktok
add address=206.84.112.29 list=tiktok
add address=23.56.239.186 list=tiktok
add address=163.181.18.227 list=tiktok
add address=23.50.117.26 list=tiktok
add address=13.33.88.46 list=tiktok
add address=206.84.112.16 list=tiktok
add address=23.56.239.130 list=tiktok
add address=23.214.169.219 list=tiktok
add address=13.33.88.110 list=tiktok
add address=23.50.117.9 list=tiktok
add address=129.227.42.123 list=tiktok
add address=23.215.35.68 list=tiktok
add address=23.215.35.102 list=tiktok
add address=23.56.239.176 list=tiktok
add address=23.56.239.195 list=tiktok
add address=23.56.239.170 list=tiktok
add address=45.121.219.219 list=tiktok
add address=23.50.117.8 list=tiktok
add address=23.56.239.112 list=tiktok
add address=184.25.236.18 list=tiktok
add address=23.214.169.198 list=tiktok
add address=45.121.219.202 list=tiktok
add address=23.56.239.194 list=tiktok
add address=129.227.42.53 list=tiktok
add address=118.98.77.97 list=tiktok
add address=184.25.236.139 list=tiktok
add address=184.25.236.81 list=tiktok
add address=18.64.37.117 list=tiktok
add address=18.64.37.80 list=tiktok
add address=184.25.236.146 list=tiktok
add address=23.56.239.145 list=tiktok
add address=184.25.236.89 list=tiktok
add address=184.25.236.171 list=tiktok
add address=184.25.236.123 list=tiktok
add address=23.214.169.207 list=tiktok
add address=184.25.236.56 list=tiktok
add address=23.56.239.99 list=tiktok
add address=23.214.169.210 list=tiktok
add address=163.181.100.240 list=tiktok
add address=163.181.100.236 list=tiktok
add address=23.56.239.179 list=tiktok
add address=23.214.169.233 list=tiktok
add address=23.214.169.203 list=tiktok
add address=128.1.67.230 list=tiktok
add address=23.214.169.217 list=tiktok
add address=23.50.117.34 list=tiktok
add address=36.91.254.99 list=tiktok
add address=103.160.155.55 list=tiktok
add address=23.221.50.187 list=tiktok
add address=18.155.68.93 list=tiktok
add address=23.214.169.208 list=tiktok
add address=23.56.239.113 list=tiktok
add address=23.215.35.81 list=tiktok
add address=119.235.211.194 list=tiktok
add address=13.33.88.48 list=tiktok
add address=23.50.117.80 list=tiktok
add address=36.66.223.29 list=tiktok
add address=23.50.117.56 list=tiktok
add address=13.33.88.90 list=tiktok
add address=163.181.100.241 list=tiktok
add address=163.181.100.238 list=tiktok
add address=23.221.50.211 list=tiktok
add address=23.38.195.217 list=tiktok
add address=18.155.68.65 list=tiktok
add address=163.181.100.239 list=tiktok
add address=118.98.95.145 list=tiktok
add address=23.38.195.240 list=tiktok
add address=184.25.236.11 list=tiktok
add address=184.25.236.104 list=tiktok
add address=23.214.169.201 list=tiktok
add address=129.227.42.51 list=tiktok
add address=23.200.135.19 list=tiktok
add address=23.200.135.34 list=tiktok
add address=23.222.26.9 list=tiktok
add address=184.25.236.66 list=tiktok
add address=118.98.95.82 list=tiktok
add address=23.216.158.186 list=tiktok
add address=23.38.195.115 list=tiktok
add address=23.38.195.154 list=tiktok
add address=184.25.236.192 list=tiktok
add address=184.25.236.208 list=tiktok
add address=184.25.236.186 list=tiktok
add address=118.98.95.146 list=tiktok
add address=23.56.239.178 list=tiktok
add address=23.216.158.200 list=tiktok
add address=23.210.250.97 list=tiktok
add address=23.221.50.194 list=tiktok
add address=23.38.195.201 list=tiktok
add address=108.138.141.47 list=tiktok
add address=23.38.195.50 list=tiktok
add address=23.222.26.26 list=tiktok
add address=23.38.195.178 list=tiktok
add address=23.222.26.40 list=tiktok
add address=36.66.223.33 list=tiktok
add address=18.155.68.50 list=tiktok
add address=154.85.89.245 list=tiktok
add address=184.25.236.121 list=tiktok
add address=128.14.113.105 list=tiktok
add address=23.222.26.59 list=tiktok
add address=23.38.195.123 list=tiktok
add address=184.25.236.152 list=tiktok
add address=23.38.195.242 list=tiktok
add address=23.200.135.18 list=tiktok
add address=23.200.135.26 list=tiktok
add address=45.121.219.227 list=tiktok
add address=139.177.239.156 list=tiktok
add address=23.56.239.89 list=tiktok
add address=23.56.239.98 list=tiktok
add address=34.101.206.34 list=tiktok
add address=23.39.173.40 list=tiktok
add address=23.38.195.227 list=tiktok
add address=184.25.236.130 list=tiktok
add address=163.181.100.243 list=tiktok
add address=23.214.169.232 list=tiktok
add address=23.38.195.8 list=tiktok
add address=23.56.239.152 list=tiktok
add address=45.121.219.225 list=tiktok
add address=23.56.239.169 list=tiktok
add address=23.214.169.215 list=tiktok
add address=23.214.169.224 list=tiktok
add address=23.56.239.184 list=tiktok
add address=116.206.9.185 list=tiktok
add address=23.38.195.250 list=tiktok
add address=23.203.165.10 list=tiktok
add address=128.1.67.228 list=tiktok
add address=116.206.9.162 list=tiktok
add address=147.50.207.81 list=tiktok
add address=184.25.236.218 list=tiktok
add address=184.25.236.162 list=tiktok
add address=23.38.195.138 list=tiktok
add address=36.91.231.10 list=tiktok
add address=118.97.159.48 list=tiktok
add address=118.97.159.42 list=tiktok
add address=23.222.26.19 list=tiktok
add address=23.38.195.139 list=tiktok
add address=184.25.236.64 list=tiktok
add address=36.91.231.18 list=tiktok
add address=118.98.77.176 list=tiktok
add address=118.98.77.91 list=tiktok
add address=45.121.219.235 list=tiktok
add address=118.98.77.139 list=tiktok
add address=23.64.122.114 list=tiktok
add address=163.181.100.237 list=tiktok
add address=125.56.219.17 list=tiktok
add address=18.64.18.15 list=tiktok
add address=184.25.236.136 list=tiktok
add address=87.119.9.45 list=tiktok
add address=184.25.236.57 list=tiktok
add address=23.216.158.187 list=tiktok
add address=184.25.236.115 list=tiktok
add address=184.25.236.160 list=tiktok
add address=108.138.141.3 list=tiktok
add address=184.25.236.242 list=tiktok
add address=103.147.212.113 list=tiktok
add address=13.33.33.66 list=tiktok
add address=13.33.88.27 list=tiktok
add address=118.98.42.147 list=tiktok
add address=118.98.42.145 list=tiktok
add address=118.98.42.154 list=tiktok
add address=128.1.67.227 list=tiktok
add address=87.119.9.43 list=tiktok
add address=180.250.81.15 list=tiktok
add address=180.250.81.12 list=tiktok
add address=108.138.141.37 list=tiktok
add address=23.50.117.66 list=tiktok
add address=118.97.158.187 list=tiktok
add address=118.98.42.155 list=tiktok
add address=118.98.42.144 list=tiktok
add address=118.98.42.161 list=tiktok
add address=118.98.113.235 list=tiktok
add address=118.97.158.9 list=tiktok
add address=118.97.159.25 list=tiktok
add address=184.25.236.161 list=tiktok
add address=128.1.67.226 list=tiktok
add address=128.1.67.231 list=tiktok
add address=180.250.81.20 list=tiktok
add address=118.97.159.34 list=tiktok
add address=118.98.113.225 list=tiktok
add address=54.192.150.114 list=tiktok
add address=36.91.255.78 list=tiktok
add address=23.214.169.230 list=tiktok
add address=118.98.77.83 list=tiktok
add address=23.222.26.58 list=tiktok
add address=184.25.236.201 list=tiktok
add address=23.214.169.223 list=tiktok
add address=23.50.117.74 list=tiktok
add address=23.222.26.35 list=tiktok
add address=184.25.236.58 list=tiktok
add address=118.98.77.161 list=tiktok
add address=184.25.236.43 list=tiktok
add address=184.25.236.50 list=tiktok
add address=23.219.204.226 list=tiktok
add address=23.221.50.193 list=tiktok
add address=23.53.15.26 list=tiktok
add address=13.227.254.5 list=tiktok
add address=34.107.238.235 list=tiktok
add address=23.53.15.18 list=tiktok
add address=13.224.250.31 list=tiktok
add address=23.50.117.217 list=tiktok
add address=23.50.117.211 list=tiktok
add address=23.50.117.210 list=tiktok
add address=184.25.236.32 list=tiktok
add address=23.53.15.10 list=tiktok
add address=23.56.239.96 list=tiktok
add address=23.216.158.160 list=tiktok
add address=23.53.15.34 list=tiktok
add address=184.25.236.144 list=tiktok
add address=23.219.184.10 list=tiktok
add address=184.25.236.17 list=tiktok
add address=112.215.101.81 list=tiktok
add address=156.59.116.230 list=tiktok
add address=140.213.224.67 list=tiktok
add address=23.219.184.155 list=tiktok
add address=13.224.250.111 list=tiktok
add address=156.59.116.228 list=tiktok
add address=23.214.169.218 list=tiktok
add address=23.50.117.218 list=tiktok
add address=140.213.224.56 list=tiktok
add address=156.238.132.7 list=tiktok
add address=156.59.116.225 list=tiktok
add address=140.213.224.41 list=tiktok
add address=23.219.184.153 list=tiktok
add address=23.219.184.147 list=tiktok
add address=184.25.236.187 list=tiktok
add address=156.59.116.231 list=tiktok
add address=23.53.15.16 list=tiktok
add address=23.53.15.19 list=tiktok
add address=23.53.15.43 list=tiktok
add address=23.219.184.169 list=tiktok
add address=129.227.42.49 list=tiktok
add address=156.59.116.227 list=tiktok
add address=156.240.94.45 list=tiktok
add address=140.213.224.64 list=tiktok
add address=23.53.15.11 list=tiktok
add address=52.84.251.69 list=tiktok
add address=23.221.50.234 list=tiktok
add address=23.50.117.209 list=tiktok
add address=23.56.239.104 list=tiktok
add address=23.53.15.9 list=tiktok
add address=23.221.50.210 list=tiktok
add address=23.53.15.40 list=tiktok
add address=23.53.15.41 list=tiktok
add address=13.227.254.14 list=tiktok
add address=23.50.117.202 list=tiktok
add address=23.50.117.216 list=tiktok
add address=23.50.117.24 list=tiktok
add address=129.227.42.52 list=tiktok
add address=129.227.42.55 list=tiktok
add address=129.227.47.229 list=tiktok
add address=23.50.117.64 list=tiktok
add address=71.18.3.224 list=tiktok
add address=180.240.234.240 list=tiktok
add address=118.97.159.27 list=tiktok
add address=118.97.159.26 list=tiktok
add address=118.97.159.33 list=tiktok
add address=23.50.117.200 list=tiktok
add address=23.38.195.226 list=tiktok
add address=52.84.251.82 list=tiktok
add address=23.38.195.218 list=tiktok
add address=23.50.117.201 list=tiktok
add address=118.98.77.154 list=tiktok
add address=184.25.236.98 list=tiktok
add address=184.25.236.42 list=tiktok
add address=184.25.236.90 list=tiktok
add address=23.215.7.68 list=tiktok
add address=23.215.7.96 list=tiktok
add address=36.91.231.17 list=tiktok
add address=184.25.236.154 list=tiktok
add address=184.25.236.74 list=tiktok
add address=184.25.236.147 list=tiktok
add address=108.138.141.14 list=tiktok
add address=118.98.77.120 list=tiktok
add address=118.98.77.168 list=tiktok
add address=23.215.7.83 list=tiktok
add address=23.215.7.75 list=tiktok
add address=184.25.236.35 list=tiktok
add address=23.50.117.170 list=tiktok
add address=23.50.117.208 list=tiktok
add address=103.147.212.112 list=tiktok
add address=154.85.89.251 list=tiktok
add address=118.98.77.145 list=tiktok
add address=23.214.169.216 list=tiktok
add address=184.25.236.106 list=tiktok
add address=184.25.236.99 list=tiktok
add address=23.50.117.41 list=tiktok
add address=34.36.71.42 list=tiktok
add address=184.25.236.202 list=tiktok
add address=23.215.7.77 list=tiktok
add address=118.98.77.147 list=tiktok
add address=184.25.236.51 list=tiktok
add address=184.25.236.72 list=tiktok
add address=23.38.195.251 list=tiktok
add address=184.25.236.179 list=tiktok
add address=184.25.236.40 list=tiktok
add address=13.227.254.8 list=tiktok
add address=71.18.1.244 list=tiktok
add address=23.50.117.82 list=tiktok
add address=103.147.212.61 list=tiktok
add address=118.97.159.59 list=tiktok
add address=23.56.239.144 list=tiktok
add address=18.64.18.124 list=tiktok
add address=129.227.42.46 list=tiktok
add address=118.98.76.210 list=tiktok
add address=23.214.169.214 list=tiktok
add address=103.160.155.61 list=tiktok
add address=43.152.163.231 list=tiktok
add address=114.122.98.42 list=tiktok
add address=114.122.98.25 list=tiktok
add address=184.25.236.75 list=tiktok
add address=23.56.239.153 list=tiktok
add address=71.18.1.238 list=tiktok
add address=184.25.236.219 list=tiktok
add address=23.222.26.50 list=tiktok
add address=71.18.36.226 list=tiktok
add address=45.121.219.185 list=tiktok
add address=45.121.219.179 list=tiktok
add address=45.121.219.186 list=tiktok
add address=45.121.219.184 list=tiktok
add address=45.121.219.250 list=tiktok
add address=103.147.212.116 list=tiktok
add address=129.227.42.122 list=tiktok
add address=23.209.46.147 list=tiktok
add address=45.121.219.241 list=tiktok
add address=23.47.190.8 list=tiktok
add address=23.47.190.16 list=tiktok
add address=23.47.190.75 list=tiktok
add address=52.84.251.119 list=tiktok
add address=45.121.219.251 list=tiktok
add address=23.209.46.144 list=tiktok
add address=45.121.219.242 list=tiktok
add address=114.124.192.147 list=tiktok
add address=182.0.128.112 list=tiktok
add address=139.177.239.155 list=tiktok
add address=45.121.219.187 list=tiktok
add address=129.227.40.223 list=tiktok
add address=45.121.219.240 list=tiktok
add address=23.47.190.19 list=tiktok
add address=23.39.173.112 list=tiktok
add address=129.227.40.229 list=tiktok
add address=13.33.33.69 list=tiktok
add address=45.121.219.249 list=tiktok
add address=23.210.250.106 list=tiktok
add address=23.210.250.98 list=tiktok
add address=45.121.219.248 list=tiktok
add address=23.202.33.131 list=tiktok
add address=23.48.173.219 list=tiktok
add address=23.49.60.162 list=tiktok
add address=23.49.60.169 list=tiktok
add address=23.53.15.42 list=tiktok
add address=23.221.50.16 list=tiktok
add address=23.209.46.156 list=tiktok
add address=23.209.46.154 list=tiktok
add address=23.47.190.64 list=tiktok
add address=23.47.190.42 list=tiktok
add address=13.224.250.91 list=tiktok
add address=184.27.122.163 list=tiktok
add address=18.64.37.65 list=tiktok
add address=18.64.37.89 list=tiktok
add address=23.64.122.17 list=tiktok
add address=23.47.190.169 list=tiktok
add address=23.216.158.195 list=tiktok
add address=18.67.172.17 list=tiktok
add address=23.215.35.156 list=tiktok
add address=23.216.158.155 list=tiktok
add address=130.44.212.78 list=tiktok
add address=130.44.212.75 list=tiktok
add address=23.215.7.72 list=tiktok
add address=184.27.122.168 list=tiktok
add address=23.39.173.96 list=tiktok
add address=23.215.7.88 list=tiktok
add address=184.25.236.217 list=tiktok
add address=128.1.67.225 list=tiktok
add address=118.98.77.138 list=tiktok
add address=118.98.77.74 list=tiktok
add address=88.221.110.179 list=tiktok
add address=118.98.77.82 list=tiktok
add address=128.1.67.229 list=tiktok
add address=95.101.111.160 list=tiktok
add address=95.101.111.136 list=tiktok
add address=88.221.110.171 list=tiktok
add address=88.221.110.162 list=tiktok
add address=184.25.236.83 list=tiktok
add address=18.161.49.77 list=tiktok
add address=118.98.95.163 list=tiktok
add address=23.222.26.10 list=tiktok
add address=118.98.77.162 list=tiktok
add address=118.97.158.11 list=tiktok
add address=118.97.159.8 list=tiktok
add address=18.67.172.63 list=tiktok
add address=184.25.236.26 list=tiktok
add address=23.216.158.201 list=tiktok
add address=23.216.158.184 list=tiktok
add address=184.25.236.131 list=tiktok
add address=23.215.7.86 list=tiktok
add address=23.215.7.95 list=tiktok
add address=23.215.7.71 list=tiktok
add address=184.25.236.97 list=tiktok
add address=184.25.236.200 list=tiktok
add address=184.25.236.48 list=tiktok
add address=184.25.236.80 list=tiktok
add address=118.98.77.75 list=tiktok
add address=184.25.236.10 list=tiktok
add address=118.98.42.137 list=tiktok
add address=23.222.26.34 list=tiktok
add address=184.25.236.178 list=tiktok
add address=156.253.7.231 list=tiktok
add address=184.25.236.88 list=tiktok
add address=23.61.205.51 list=tiktok
add address=23.215.7.89 list=tiktok
add address=103.147.212.54 list=tiktok
add address=184.25.236.128 list=tiktok
add address=23.222.26.16 list=tiktok
add address=184.25.236.105 list=tiktok
add address=108.157.30.93 list=tiktok
add address=184.25.236.33 list=tiktok
add address=184.25.236.226 list=tiktok
add address=36.91.231.19 list=tiktok
add address=184.25.236.168 list=tiktok
add address=23.38.195.171 list=tiktok
add address=118.98.95.202 list=tiktok
add address=23.38.195.170 list=tiktok
add address=118.98.42.160 list=tiktok
add address=103.147.212.37 list=tiktok
add address=43.152.161.243 list=tiktok
add address=47.89.121.9 list=tiktok
add address=103.147.212.115 list=tiktok
add address=103.147.212.114 list=tiktok
add address=154.85.89.253 list=tiktok
add address=118.98.95.209 list=tiktok
add address=118.98.95.208 list=tiktok
add address=23.222.26.8 list=tiktok
add address=118.98.95.224 list=tiktok
add address=118.98.95.162 list=tiktok
add address=118.98.95.144 list=tiktok
add address=118.98.113.224 list=tiktok
add address=118.98.42.138 list=tiktok
add address=184.25.236.243 list=tiktok
add address=36.91.231.16 list=tiktok
add address=184.25.236.224 list=tiktok
add address=118.98.113.242 list=tiktok
add address=23.222.26.57 list=tiktok
add address=118.98.77.121 list=tiktok
add address=118.98.42.169 list=tiktok
add address=118.98.77.177 list=tiktok
add address=36.91.231.58 list=tiktok
add address=184.28.235.34 list=tiktok
add address=184.25.236.176 list=tiktok
add address=184.28.235.11 list=tiktok
add address=184.28.235.35 list=tiktok
add address=18.161.49.114 list=tiktok
add address=184.25.236.82 list=tiktok
add address=95.101.111.150 list=tiktok
add address=23.203.165.8 list=tiktok
add address=23.38.195.249 list=tiktok
add address=128.1.67.224 list=tiktok
add address=118.98.42.146 list=tiktok
add address=184.25.236.234 list=tiktok
add address=184.25.236.232 list=tiktok
add address=18.154.7.57 list=tiktok
add address=184.28.235.40 list=tiktok
add address=118.98.42.162 list=tiktok
add address=184.25.236.65 list=tiktok
add address=23.47.190.74 list=tiktok
add address=18.154.7.97 list=tiktok
add address=23.38.195.200 list=tiktok
add address=23.38.195.194 list=tiktok
add address=23.38.195.203 list=tiktok
add address=23.38.195.80 list=tiktok
add address=23.38.195.195 list=tiktok
add address=184.25.236.137 list=tiktok
add address=118.98.113.219 list=tiktok
add address=23.32.29.105 list=tiktok
add address=23.38.195.232 list=tiktok
add address=103.147.212.117 list=tiktok
add address=23.222.26.32 list=tiktok
add address=23.38.195.67 list=tiktok
add address=146.75.114.73 list=tiktok
add address=23.47.190.200 list=tiktok
add address=156.253.7.233 list=tiktok
add address=184.25.236.120 list=tiktok
add address=23.205.70.195 list=tiktok
add address=23.38.195.224 list=tiktok
add address=118.98.42.171 list=tiktok
add address=23.38.195.219 list=tiktok
add address=184.28.235.73 list=tiktok
add address=118.97.159.40 list=tiktok
add address=118.98.113.226 list=tiktok
add address=23.32.29.104 list=tiktok
add address=118.98.77.99 list=tiktok
add address=23.32.29.98 list=tiktok
add address=18.161.49.40 list=tiktok
add address=118.98.42.170 list=tiktok
add address=23.38.195.211 list=tiktok
add address=184.25.236.169 list=tiktok
add address=18.161.49.119 list=tiktok
add address=118.98.113.243 list=tiktok
add address=118.98.77.73 list=tiktok
add address=118.98.77.114 list=tiktok
add address=23.215.7.5 list=tiktok
add address=23.203.165.26 list=tiktok
add address=23.203.165.17 list=tiktok
add address=156.253.7.227 list=tiktok
add address=154.85.89.252 list=tiktok
add address=23.38.195.243 list=tiktok
add address=118.98.113.250 list=tiktok
add address=184.25.236.240 list=tiktok
add address=118.98.77.163 list=tiktok
add address=118.98.42.178 list=tiktok
add address=18.154.7.71 list=tiktok
add address=184.25.236.241 list=tiktok
add address=23.192.150.20 list=tiktok
add address=118.98.77.146 list=tiktok
add address=118.98.77.112 list=tiktok
add address=23.219.204.25 list=tiktok
add address=118.97.158.10 list=tiktok
add address=23.32.29.17 list=tiktok
add address=23.219.204.19 list=tiktok
add address=23.219.204.64 list=tiktok
add address=23.219.204.35 list=tiktok
add address=23.219.204.43 list=tiktok
add address=23.219.204.40 list=tiktok
add address=118.97.159.58 list=tiktok
add address=118.98.77.185 list=tiktok
add address=23.219.204.96 list=tiktok
add address=23.219.204.66 list=tiktok
add address=184.25.236.194 list=tiktok
add address=23.203.165.33 list=tiktok
add address=118.97.159.50 list=tiktok
add address=118.97.159.57 list=tiktok
add address=23.219.204.91 list=tiktok
add address=23.222.26.43 list=tiktok
add address=184.25.236.138 list=tiktok
add address=23.216.158.185 list=tiktok
add address=118.97.159.11 list=tiktok
add address=108.157.30.47 list=tiktok
add address=184.25.236.67 list=tiktok
add address=23.215.7.32 list=tiktok
add address=23.215.7.28 list=tiktok
add address=23.214.169.227 list=tiktok
add address=95.101.111.137 list=tiktok
add address=95.101.111.179 list=tiktok
add address=95.101.111.146 list=tiktok
add address=95.101.111.153 list=tiktok
add address=139.177.245.196 list=tiktok
add address=23.32.29.106 list=tiktok
add address=163.181.100.242 list=tiktok
add address=23.32.29.91 list=tiktok
add address=23.215.7.14 list=tiktok
add address=23.202.33.121 list=tiktok
add address=88.221.110.194 list=tiktok
add address=88.221.110.193 list=tiktok
add address=2.16.241.198 list=tiktok
add address=2.16.241.201 list=tiktok
add address=118.98.77.107 list=tiktok
add address=23.49.60.152 list=tiktok
add address=23.47.190.112 list=tiktok
add address=36.89.220.25 list=tiktok
add address=2.19.126.75 list=tiktok
add address=88.221.110.186 list=tiktok
add address=23.214.169.213 list=tiktok
add address=88.221.110.187 list=tiktok
add address=88.221.110.178 list=tiktok
add address=88.221.110.224 list=tiktok
add address=88.221.110.136 list=tiktok
add address=2.19.126.97 list=tiktok
add address=18.67.172.71 list=tiktok
add address=23.39.173.114 list=tiktok
add address=2.19.126.76 list=tiktok
add address=2.19.126.85 list=tiktok
add address=23.219.204.80 list=tiktok
add address=88.221.110.138 list=tiktok
add address=23.53.15.8 list=tiktok
add address=23.32.29.11 list=tiktok
add address=23.47.190.18 list=tiktok
add address=23.47.190.96 list=tiktok
add address=118.98.95.81 list=tiktok
add address=88.221.110.129 list=tiktok
add address=23.200.135.17 list=tiktok
add address=129.227.40.230 list=tiktok
add address=108.157.30.90 list=tiktok
add address=108.157.30.24 list=tiktok
add address=118.97.159.56 list=tiktok
add address=184.25.236.122 list=tiktok
add address=84.17.50.54 list=tiktok
add address=84.17.50.39 list=tiktok
add address=96.17.180.45 list=tiktok
add address=71.18.1.240 list=tiktok
add address=129.227.40.226 list=tiktok
add address=23.200.135.35 list=tiktok
add address=23.39.173.81 list=tiktok
add address=2.16.241.203 list=tiktok
add address=88.221.110.232 list=tiktok
add address=23.39.173.131 list=tiktok
add address=23.48.173.235 list=tiktok
add address=184.25.236.227 list=tiktok
add address=184.25.236.211 list=tiktok
add address=23.39.173.137 list=tiktok
add address=18.64.18.85 list=tiktok
add address=118.98.77.123 list=tiktok
add address=23.214.169.205 list=tiktok
add address=156.59.192.179 list=tiktok
add address=156.59.248.2 list=tiktok
add address=23.39.173.80 list=tiktok
add address=101.33.4.114 list=tiktok
add address=2.16.241.206 list=tiktok
add address=2.16.241.214 list=tiktok
add address=18.154.7.20 list=tiktok
add address=23.72.90.25 list=tiktok
add address=23.72.90.4 list=tiktok
add address=184.28.229.34 list=tiktok
add address=130.44.212.211 list=tiktok
add address=156.240.94.48 list=tiktok
add address=23.39.173.120 list=tiktok
add address=118.98.77.152 list=tiktok
add address=103.167.27.40 list=tiktok
add address=36.91.254.40 list=tiktok
add address=18.64.18.119 list=tiktok
add address=23.214.169.197 list=tiktok
add address=118.98.95.203 list=tiktok
add address=103.147.212.38 list=tiktok
add address=23.48.173.208 list=tiktok
add address=118.98.95.75 list=tiktok
add address=118.98.95.147 list=tiktok
add address=184.28.229.65 list=tiktok
add address=184.28.229.67 list=tiktok
add address=23.38.195.64 list=tiktok
add address=156.59.248.10 list=tiktok
add address=43.152.160.231 list=tiktok
add address=118.98.77.160 list=tiktok
add address=103.147.213.33 list=tiktok
add address=129.227.42.48 list=tiktok
add address=23.38.195.241 list=tiktok
add address=95.101.111.148 list=tiktok
add address=18.64.18.54 list=tiktok
add address=13.33.33.39 list=tiktok
add address=23.61.0.209 list=tiktok
add address=108.138.141.62 list=tiktok
add address=118.97.159.16 list=tiktok
add address=118.98.77.106 list=tiktok
add address=34.101.83.5 list=tiktok
add address=118.97.159.51 list=tiktok
add address=23.219.204.98 list=tiktok
add address=23.38.195.65 list=tiktok
add address=36.91.215.248 list=tiktok
add address=23.215.7.30 list=tiktok
add address=23.215.7.12 list=tiktok
add address=130.44.212.249 list=tiktok
add address=23.215.7.20 list=tiktok
add address=23.215.7.23 list=tiktok
add address=18.67.172.9 list=tiktok
add address=36.91.215.218 list=tiktok
add address=36.91.215.209 list=tiktok
add address=23.38.195.43 list=tiktok
add address=108.138.141.69 list=tiktok
add address=118.98.77.88 list=tiktok
add address=125.56.219.2 list=tiktok
add address=118.98.77.144 list=tiktok
add address=156.240.94.111 list=tiktok
add address=34.98.93.234 list=tiktok
add address=118.98.77.169 list=tiktok
add address=18.64.37.29 list=tiktok
add address=118.98.77.113 list=tiktok
add address=23.203.165.18 list=tiktok
add address=180.250.169.26 list=tiktok
add address=23.205.70.186 list=tiktok
add address=156.253.7.226 list=tiktok
add address=13.33.33.10 list=tiktok
add address=103.147.212.45 list=tiktok
add address=18.64.18.116 list=tiktok
add address=130.44.212.212 list=tiktok
add address=156.59.162.114 list=tiktok
add address=101.33.4.184 list=tiktok
add address=156.253.7.230 list=tiktok
add address=118.98.76.241 list=tiktok
add address=23.38.195.153 list=tiktok
add address=23.38.195.66 list=tiktok
add address=23.38.195.210 list=tiktok
add address=23.38.195.216 list=tiktok
add address=143.244.32.11 list=tiktok
add address=18.64.18.90 list=tiktok
add address=103.147.213.35 list=tiktok
add address=23.38.195.225 list=tiktok
add address=23.38.195.233 list=tiktok
add address=23.215.35.69 list=tiktok
add address=156.240.94.112 list=tiktok
add address=54.192.150.85 list=tiktok
add address=23.38.195.168 list=tiktok
add address=18.64.18.117 list=tiktok
add address=23.38.195.186 list=tiktok
add address=23.200.135.32 list=tiktok
add address=23.200.135.27 list=tiktok
add address=118.98.77.115 list=tiktok
add address=23.215.35.99 list=tiktok
add address=128.1.176.230 list=tiktok
add address=23.192.150.19 list=tiktok
add address=114.10.2.216 list=tiktok
add address=114.10.2.227 list=tiktok
add address=114.10.2.171 list=tiktok
add address=129.227.42.54 list=tiktok
add address=156.59.106.225 list=tiktok
add address=23.215.35.72 list=tiktok
add address=23.48.173.224 list=tiktok
add address=18.161.49.121 list=tiktok
add address=23.38.195.185 list=tiktok
add address=23.56.239.137 list=tiktok
add address=43.132.80.241 list=tiktok
add address=23.38.195.208 list=tiktok
add address=118.98.77.137 list=tiktok
add address=23.219.204.82 list=tiktok
add address=103.147.212.51 list=tiktok
add address=23.38.195.202 list=tiktok
add address=23.48.173.218 list=tiktok
add address=23.38.195.192 list=tiktok
add address=23.48.173.49 list=tiktok
add address=23.48.173.51 list=tiktok
add address=23.221.50.217 list=tiktok
add address=23.219.204.174 list=tiktok
add address=23.219.204.161 list=tiktok
add address=23.38.195.177 list=tiktok
add address=23.38.195.179 list=tiktok
add address=23.192.150.13 list=tiktok
add address=23.192.150.6 list=tiktok
add address=23.205.70.91 list=tiktok
add address=23.219.204.168 list=tiktok
add address=23.219.204.166 list=tiktok
add address=23.205.70.96 list=tiktok
add address=23.53.15.27 list=tiktok
add address=23.200.135.41 list=tiktok
add address=23.200.135.25 list=tiktok
add address=2.17.22.185 list=tiktok
add address=118.98.77.155 list=tiktok
add address=118.98.77.171 list=tiktok
add address=2.17.22.8 list=tiktok
add address=2.17.22.154 list=tiktok
add address=88.221.110.154 list=tiktok
add address=88.221.110.226 list=tiktok
add address=88.221.110.233 list=tiktok
add address=2.16.1.24 list=tiktok
add address=2.16.100.176 list=tiktok
add address=23.215.7.7 list=tiktok
add address=13.33.33.40 list=tiktok
add address=18.64.37.114 list=tiktok
add address=23.205.70.106 list=tiktok
add address=129.227.42.47 list=tiktok
add address=2.16.1.75 list=tiktok
add address=2.16.1.72 list=tiktok
add address=2.16.100.161 list=tiktok
add address=23.38.195.209 list=tiktok
add address=2.16.100.138 list=tiktok
add address=184.25.236.225 list=tiktok
add address=2.16.1.128 list=tiktok
add address=101.33.5.46 list=tiktok
add address=47.246.38.229 list=tiktok
add address=88.221.110.64 list=tiktok
add address=2.16.100.160 list=tiktok
add address=2.16.1.9 list=tiktok
add address=47.246.38.232 list=tiktok
add address=23.39.173.73 list=tiktok
add address=88.221.110.65 list=tiktok
add address=23.38.195.96 list=tiktok
add address=23.205.70.88 list=tiktok
add address=138.113.117.114 list=tiktok
add address=88.221.110.227 list=tiktok
add address=88.221.110.234 list=tiktok
add address=23.38.195.104 list=tiktok
add address=180.250.81.23 list=tiktok
add address=147.160.184.45 list=tiktok
add address=23.39.173.98 list=tiktok
add address=23.222.26.49 list=tiktok
add address=2.16.1.121 list=tiktok
add address=2.16.1.129 list=tiktok
add address=206.84.112.18 list=tiktok
add address=2.16.1.32 list=tiktok
add address=184.87.193.90 list=tiktok
add address=129.227.40.228 list=tiktok
add address=23.39.173.129 list=tiktok
add address=23.215.7.21 list=tiktok
add address=156.59.248.73 list=tiktok
add address=23.215.7.4 list=tiktok
add address=23.215.7.17 list=tiktok
add address=184.28.229.224 list=tiktok
add address=129.227.47.228 list=tiktok
add address=23.39.173.88 list=tiktok
add address=118.97.159.17 list=tiktok
add address=23.192.150.26 list=tiktok
add address=114.10.52.169 list=tiktok
add address=18.64.37.68 list=tiktok
add address=23.39.173.75 list=tiktok
add address=114.10.2.226 list=tiktok
add address=156.251.75.213 list=tiktok
add address=128.1.176.138 list=tiktok
add address=118.98.77.80 list=tiktok
add address=23.39.173.82 list=tiktok
add address=23.53.15.33 list=tiktok
add address=23.222.26.42 list=tiktok
add address=23.39.173.139 list=tiktok
add address=156.240.62.241 list=tiktok
add address=118.98.95.80 list=tiktok
add address=23.215.7.91 list=tiktok
add address=45.121.219.243 list=tiktok
add address=156.240.94.113 list=tiktok
add address=180.250.81.22 list=tiktok
add address=156.59.76.174 list=tiktok
add address=95.101.111.172 list=tiktok
add address=23.38.195.169 list=tiktok
add address=23.215.7.22 list=tiktok
add address=95.101.111.147 list=tiktok
add address=95.101.111.135 list=tiktok
add address=23.39.173.72 list=tiktok
add address=23.53.15.24 list=tiktok
add address=23.215.7.15 list=tiktok
add address=118.98.77.81 list=tiktok
add address=23.215.7.19 list=tiktok
add address=130.44.212.77 list=tiktok
add address=36.91.254.44 list=tiktok
add address=148.153.241.25 list=tiktok
add address=23.48.173.225 list=tiktok
add address=23.215.35.78 list=tiktok
add address=184.87.193.89 list=tiktok
add address=156.245.4.237 list=tiktok
add address=125.56.219.18 list=tiktok
add address=23.32.29.96 list=tiktok
add address=45.121.219.209 list=tiktok
add address=184.28.235.19 list=tiktok
add address=23.222.26.24 list=tiktok
add address=23.38.195.17 list=tiktok
add address=184.25.236.177 list=tiktok
add address=130.44.212.76 list=tiktok
add address=184.87.193.72 list=tiktok
add address=23.219.204.227 list=tiktok
add address=23.219.204.218 list=tiktok
add address=23.219.204.211 list=tiktok
add address=23.219.204.219 list=tiktok
add address=23.215.7.10 list=tiktok
add address=23.219.204.225 list=tiktok
add address=23.219.204.210 list=tiktok
add address=23.48.173.233 list=tiktok
add address=23.219.204.233 list=tiktok
add address=112.198.43.112 list=tiktok
add address=156.253.7.232 list=tiktok
add address=23.222.26.18 list=tiktok
add address=23.221.50.90 list=tiktok
add address=23.203.165.32 list=tiktok
add address=23.215.7.76 list=tiktok
add address=23.215.35.74 list=tiktok
add address=103.147.212.46 list=tiktok
add address=103.147.212.50 list=tiktok
add address=206.84.107.50 list=tiktok
add address=206.84.107.45 list=tiktok
add address=114.10.2.187 list=tiktok
add address=23.39.173.136 list=tiktok
add address=128.1.176.225 list=tiktok
add address=23.48.173.209 list=tiktok
add address=23.219.204.18 list=tiktok
add address=156.251.75.211 list=tiktok
add address=184.25.236.73 list=tiktok
add address=23.203.165.16 list=tiktok
add address=23.222.26.17 list=tiktok
add address=23.203.165.25 list=tiktok
add address=36.91.231.8 list=tiktok
add address=23.38.195.97 list=tiktok
add address=23.215.7.29 list=tiktok
add address=184.87.193.148 list=tiktok
add address=163.181.160.238 list=tiktok
add address=184.87.193.134 list=tiktok
add address=219.93.26.40 list=tiktok
add address=23.62.212.108 list=tiktok
add address=184.87.193.147 list=tiktok
add address=219.93.26.39 list=tiktok
add address=184.87.193.160 list=tiktok
add address=23.52.171.66 list=tiktok
add address=23.221.50.25 list=tiktok
add address=58.27.5.112 list=tiktok
add address=23.39.173.105 list=tiktok
add address=184.87.193.139 list=tiktok
add address=163.181.160.240 list=tiktok
add address=23.62.212.66 list=tiktok
add address=23.222.26.27 list=tiktok
add address=23.203.165.9 list=tiktok
add address=156.253.7.229 list=tiktok
add address=23.215.7.82 list=tiktok
add address=23.215.7.85 list=tiktok
add address=23.53.15.35 list=tiktok
add address=118.97.158.159 list=tiktok
add address=118.97.158.150 list=tiktok
add address=184.28.229.121 list=tiktok
add address=184.28.229.209 list=tiktok
add address=23.38.195.90 list=tiktok
add address=118.98.77.72 list=tiktok
add address=156.236.20.130 list=tiktok
add address=156.59.104.27 list=tiktok
add address=184.87.193.132 list=tiktok
add address=23.62.212.106 list=tiktok
add address=184.25.236.9 list=tiktok
add address=23.62.212.94 list=tiktok
add address=163.181.160.241 list=tiktok
add address=23.209.46.137 list=tiktok
add address=184.87.193.158 list=tiktok
add address=23.39.173.163 list=tiktok
add address=58.27.5.114 list=tiktok
add address=23.39.173.232 list=tiktok
add address=23.39.173.171 list=tiktok
add address=23.39.173.169 list=tiktok
add address=45.121.219.203 list=tiktok
add address=184.25.236.209 list=tiktok
add address=184.87.193.159 list=tiktok
add address=184.87.193.156 list=tiktok
add address=184.87.193.152 list=tiktok
add address=163.181.160.237 list=tiktok
add address=202.56.174.72 list=tiktok
add address=96.17.96.22 list=tiktok
add address=163.181.160.239 list=tiktok
add address=118.98.77.104 list=tiktok
add address=23.53.15.25 list=tiktok
add address=118.98.77.89 list=tiktok
add address=23.215.7.69 list=tiktok
add address=118.97.159.18 list=tiktok
add address=129.227.42.121 list=tiktok
add address=23.215.7.16 list=tiktok
add address=184.87.193.140 list=tiktok
add address=23.215.7.27 list=tiktok
add address=184.87.193.143 list=tiktok
add address=18.64.37.8 list=tiktok
add address=211.152.129.60 list=tiktok
add address=23.209.46.162 list=tiktok
add address=23.209.46.155 list=tiktok
add address=58.27.5.113 list=tiktok
add address=184.87.193.154 list=tiktok
add address=23.39.173.113 list=tiktok
add address=23.216.158.152 list=tiktok
add address=23.53.15.32 list=tiktok
add address=23.215.7.25 list=tiktok
add address=101.33.4.196 list=tiktok
add address=23.205.70.210 list=tiktok
add address=23.205.70.171 list=tiktok
add address=23.205.70.187 list=tiktok
add address=23.209.46.213 list=tiktok
add address=23.38.195.248 list=tiktok
add address=184.25.236.235 list=tiktok
add address=23.38.195.72 list=tiktok
add address=23.209.46.196 list=tiktok
add address=58.27.5.111 list=tiktok
add address=104.81.138.35 list=tiktok
add address=45.121.219.234 list=tiktok
add address=23.214.169.206 list=tiktok
add address=125.56.219.3 list=tiktok
add address=104.81.138.90 list=tiktok
add address=23.209.46.219 list=tiktok
add address=140.213.224.72 list=tiktok
add address=129.227.42.45 list=tiktok
add address=184.28.229.91 list=tiktok
add address=23.219.184.154 list=tiktok
add address=23.203.165.19 list=tiktok
add address=23.56.239.129 list=tiktok
add address=23.203.165.35 list=tiktok
add address=23.39.173.185 list=tiktok
add address=118.97.159.41 list=tiktok
add address=96.17.96.31 list=tiktok
add address=219.93.26.41 list=tiktok
add address=184.87.193.85 list=tiktok
add address=23.215.35.95 list=tiktok
add address=118.98.113.218 list=tiktok
add address=36.91.231.57 list=tiktok
add address=118.97.158.186 list=tiktok
add address=118.98.77.187 list=tiktok
add address=103.147.212.40 list=tiktok
add address=118.98.76.217 list=tiktok
add address=23.205.70.170 list=tiktok
add address=23.215.7.26 list=tiktok
add address=23.215.7.24 list=tiktok
add address=23.219.204.235 list=tiktok
add address=118.98.113.227 list=tiktok
add address=23.215.35.93 list=tiktok
add address=23.203.165.27 list=tiktok
add address=23.203.165.34 list=tiktok
add address=184.87.193.87 list=tiktok
add address=23.216.158.138 list=tiktok
add address=163.181.160.235 list=tiktok
add address=23.222.26.48 list=tiktok
add address=23.205.70.201 list=tiktok
add address=23.209.46.132 list=tiktok
add address=129.227.42.72 list=tiktok
add address=118.98.77.90 list=tiktok
add address=138.199.37.200 list=tiktok
add address=36.91.231.11 list=tiktok
add address=118.97.158.184 list=tiktok
add address=23.38.195.34 list=tiktok
add address=156.240.94.50 list=tiktok
add address=184.87.193.137 list=tiktok
add address=184.87.193.69 list=tiktok
add address=23.32.29.99 list=tiktok
add address=23.47.190.91 list=tiktok
add address=211.152.128.61 list=tiktok
add address=18.67.172.22 list=tiktok
add address=18.64.37.119 list=tiktok
add address=156.59.248.5 list=tiktok
add address=23.47.190.144 list=tiktok
add address=101.33.5.19 list=tiktok
add address=23.38.195.89 list=tiktok
add address=23.215.7.8 list=tiktok
add address=23.215.7.74 list=tiktok
add address=23.205.70.179 list=tiktok
add address=23.192.150.24 list=tiktok
add address=23.215.7.31 list=tiktok
add address=140.213.224.73 list=tiktok
add address=23.223.47.74 list=tiktok
add address=140.213.224.74 list=tiktok
add address=23.212.164.82 list=tiktok
add address=23.212.164.75 list=tiktok
add address=112.215.103.237 list=tiktok
add address=23.212.164.107 list=tiktok
add address=23.222.26.11 list=tiktok
add address=23.215.7.18 list=tiktok
add address=104.116.243.27 list=tiktok
add address=118.97.158.161 list=tiktok
add address=103.147.212.52 list=tiktok
add address=112.215.101.75 list=tiktok
add address=23.219.184.33 list=tiktok
add address=104.116.243.8 list=tiktok
add address=147.160.184.46 list=tiktok
add address=23.219.204.104 list=tiktok
add address=156.59.107.147 list=tiktok
add address=23.205.70.216 list=tiktok
add address=117.103.116.241 list=tiktok
add address=23.222.26.51 list=tiktok
add address=117.103.116.237 list=tiktok
add address=103.147.212.39 list=tiktok
add address=104.116.243.9 list=tiktok
add address=18.64.18.62 list=tiktok
add address=104.116.243.10 list=tiktok
add address=104.116.243.26 list=tiktok
add address=23.215.7.80 list=tiktok
add address=154.94.22.40 list=tiktok
add address=23.205.70.185 list=tiktok
add address=96.17.96.8 list=tiktok
add address=156.240.94.49 list=tiktok
add address=23.39.173.11 list=tiktok
add address=23.39.173.64 list=tiktok
add address=103.147.212.62 list=tiktok
add address=36.91.231.50 list=tiktok
add address=203.117.159.85 list=tiktok
add address=23.215.35.89 list=tiktok
add address=23.205.70.184 list=tiktok
add address=23.205.70.203 list=tiktok
add address=23.38.195.56 list=tiktok
add address=104.116.243.19 list=tiktok
add address=23.205.70.178 list=tiktok
add address=23.38.195.235 list=tiktok
add address=23.39.173.240 list=tiktok
add address=156.59.76.169 list=tiktok
add address=156.59.107.146 list=tiktok
add address=128.1.178.224 list=tiktok
add address=156.59.240.238 list=tiktok
add address=23.209.46.159 list=tiktok
add address=140.213.224.48 list=tiktok
add address=43.132.80.207 list=tiktok
add address=23.219.204.216 list=tiktok
add address=23.219.184.73 list=tiktok
add address=118.98.42.136 list=tiktok
add address=23.205.70.209 list=tiktok
add address=23.47.190.97 list=tiktok
add address=23.59.168.120 list=tiktok
add address=163.181.28.228 list=tiktok
add address=140.213.23.89 list=tiktok
add address=23.219.204.75 list=tiktok
add address=180.240.233.240 list=tiktok
add address=156.59.76.171 list=tiktok
add address=118.97.159.32 list=tiktok
add address=23.219.204.73 list=tiktok
add address=18.64.37.21 list=tiktok
add address=128.1.178.230 list=tiktok
add address=36.89.220.17 list=tiktok
add address=104.116.243.17 list=tiktok
add address=103.147.212.56 list=tiktok
add address=140.213.23.75 list=tiktok
add address=118.98.42.152 list=tiktok
add address=23.48.173.144 list=tiktok
add address=96.17.96.29 list=tiktok
add address=23.219.204.224 list=tiktok
add address=96.17.96.19 list=tiktok
add address=38.60.187.23 list=tiktok
add address=23.48.173.97 list=tiktok
add address=36.89.220.11 list=tiktok
add address=36.89.220.67 list=tiktok
add address=23.216.158.88 list=tiktok
add address=23.222.26.56 list=tiktok
add address=23.215.7.94 list=tiktok
add address=23.38.195.81 list=tiktok
add address=18.67.172.28 list=tiktok
add address=23.219.184.137 list=tiktok
add address=71.18.255.172 list=tiktok
add address=143.244.42.47 list=tiktok
add address=118.97.158.8 list=tiktok
add address=23.48.173.41 list=tiktok
add address=23.39.173.154 list=tiktok
add address=23.223.47.82 list=tiktok
add address=23.38.195.234 list=tiktok
add address=23.223.47.56 list=tiktok
add address=23.209.46.158 list=tiktok
add address=23.215.7.92 list=tiktok
add address=23.209.46.161 list=tiktok
add address=23.209.46.153 list=tiktok
add address=23.209.46.140 list=tiktok
add address=202.180.17.37 list=tiktok
add address=156.59.104.50 list=tiktok
add address=23.223.47.48 list=tiktok
add address=23.215.35.84 list=tiktok
add address=23.192.150.17 list=tiktok
add address=96.17.96.24 list=tiktok
add address=23.38.195.82 list=tiktok
add address=184.87.193.70 list=tiktok
add address=23.62.212.68 list=tiktok
add address=98.98.121.37 list=tiktok
add address=184.87.193.94 list=tiktok
add address=156.59.248.75 list=tiktok
add address=103.147.213.34 list=tiktok
add address=18.64.18.49 list=tiktok
add address=18.64.18.33 list=tiktok
add address=104.71.131.54 list=tiktok
add address=180.240.233.112 list=tiktok
add address=202.180.17.36 list=tiktok
add address=156.59.104.58 list=tiktok
add address=23.209.46.151 list=tiktok
add address=23.205.70.208 list=tiktok
add address=23.38.195.83 list=tiktok
add address=38.54.65.51 list=tiktok
add address=38.54.65.45 list=tiktok
add address=23.209.46.7 list=tiktok
add address=23.62.212.92 list=tiktok
add address=23.62.212.102 list=tiktok
add address=184.87.193.155 list=tiktok
add address=23.205.70.202 list=tiktok
add address=23.222.26.33 list=tiktok
add address=23.192.150.30 list=tiktok
add address=23.209.46.148 list=tiktok
add address=154.81.48.243 list=tiktok
add address=43.152.161.241 list=tiktok
add address=104.116.243.32 list=tiktok
add address=23.221.50.216 list=tiktok
add address=23.203.165.24 list=tiktok
add address=23.50.117.81 list=tiktok
add address=18.161.49.7 list=tiktok
add address=23.38.195.24 list=tiktok
add address=23.209.46.157 list=tiktok
add address=23.222.26.25 list=tiktok
add address=103.149.176.70 list=tiktok
add address=18.161.49.8 list=tiktok
add address=184.87.193.161 list=tiktok
add address=96.17.96.20 list=tiktok
add address=156.59.104.46 list=tiktok
add address=69.192.1.160 list=tiktok
add address=118.97.159.24 list=tiktok
add address=23.205.70.194 list=tiktok
add address=23.195.119.5 list=tiktok
add address=23.209.46.139 list=tiktok
add address=23.215.35.103 list=tiktok
add address=23.38.195.59 list=tiktok
add address=23.63.84.160 list=tiktok
add address=23.209.46.134 list=tiktok
add address=23.215.7.73 list=tiktok
add address=23.63.84.161 list=tiktok
add address=23.39.173.250 list=tiktok
add address=23.39.173.251 list=tiktok
add address=156.59.248.11 list=tiktok
add address=47.89.121.10 list=tiktok
add address=23.209.46.163 list=tiktok
add address=23.48.173.42 list=tiktok
add address=118.98.77.186 list=tiktok
add address=69.192.1.153 list=tiktok
add address=23.39.173.242 list=tiktok
add address=101.33.4.198 list=tiktok
add address=108.138.141.103 list=tiktok
add address=118.97.159.9 list=tiktok
add address=23.39.173.162 list=tiktok
add address=23.219.204.99 list=tiktok
add address=23.215.35.91 list=tiktok
add address=154.81.48.241 list=tiktok
add address=23.209.46.160 list=tiktok
add address=69.192.1.130 list=tiktok
add address=180.240.232.240 list=tiktok
add address=23.215.35.79 list=tiktok
add address=23.38.195.42 list=tiktok
add address=36.91.231.9 list=tiktok
add address=156.59.192.177 list=tiktok
add address=23.47.190.147 list=tiktok
add address=23.219.204.41 list=tiktok
add address=18.67.172.107 list=tiktok
add address=103.160.155.107 list=tiktok
add address=118.98.95.153 list=tiktok
add address=118.98.42.163 list=tiktok
add address=156.245.4.200 list=tiktok
add address=118.98.113.249 list=tiktok
add address=23.219.204.50 list=tiktok
add address=23.209.46.150 list=tiktok
add address=118.97.159.10 list=tiktok
add address=23.39.173.208 list=tiktok
add address=23.50.117.145 list=tiktok
add address=23.221.50.200 list=tiktok
add address=117.103.116.238 list=tiktok
add address=23.48.173.57 list=tiktok
add address=23.215.35.94 list=tiktok
add address=156.59.107.80 list=tiktok
add address=23.63.108.97 list=tiktok
add address=23.63.108.179 list=tiktok
add address=23.63.108.185 list=tiktok
add address=23.63.108.187 list=tiktok
add address=23.63.108.193 list=tiktok
add address=23.209.46.146 list=tiktok
add address=23.63.108.184 list=tiktok
add address=23.39.173.25 list=tiktok
add address=23.212.164.66 list=tiktok
add address=23.219.204.175 list=tiktok
add address=23.219.204.167 list=tiktok
add address=23.205.70.97 list=tiktok
add address=36.91.231.51 list=tiktok
add address=23.215.35.137 list=tiktok
add address=23.219.204.176 list=tiktok
add address=23.205.70.98 list=tiktok
add address=23.39.173.168 list=tiktok
add address=23.47.190.90 list=tiktok
add address=23.206.250.75 list=tiktok
add address=23.206.250.65 list=tiktok
add address=23.47.190.114 list=tiktok
add address=23.47.190.145 list=tiktok
add address=69.192.1.137 list=tiktok
add address=23.205.70.89 list=tiktok
add address=156.59.104.28 list=tiktok
add address=118.98.113.106 list=tiktok
add address=23.219.204.177 list=tiktok
add address=118.98.113.49 list=tiktok
add address=118.98.113.91 list=tiktok
add address=118.98.113.233 list=tiktok
add address=23.205.70.99 list=tiktok
add address=140.213.23.82 list=tiktok
add address=140.213.23.74 list=tiktok
add address=23.219.204.158 list=tiktok
add address=23.221.50.201 list=tiktok
add address=23.2.13.81 list=tiktok
add address=23.219.204.8 list=tiktok
add address=23.219.204.89 list=tiktok
add address=23.219.204.90 list=tiktok
add address=23.219.204.58 list=tiktok
add address=118.98.76.226 list=tiktok
add address=118.98.76.227 list=tiktok
add address=118.98.76.219 list=tiktok
add address=118.98.76.224 list=tiktok
add address=23.205.70.104 list=tiktok
add address=118.98.76.234 list=tiktok
add address=69.192.1.131 list=tiktok
add address=23.215.7.87 list=tiktok
add address=23.219.204.159 list=tiktok
add address=23.219.204.34 list=tiktok
add address=23.219.204.42 list=tiktok
add address=118.97.158.185 list=tiktok
add address=23.215.35.83 list=tiktok
add address=23.205.70.200 list=tiktok
add address=23.205.70.192 list=tiktok
add address=23.209.46.141 list=tiktok
add address=23.72.90.71 list=tiktok
add address=69.192.1.152 list=tiktok
add address=23.221.50.42 list=tiktok
add address=23.63.84.154 list=tiktok
add address=69.192.1.138 list=tiktok
add address=69.192.1.145 list=tiktok
add address=23.215.35.75 list=tiktok
add address=118.98.76.201 list=tiktok
add address=23.216.158.171 list=tiktok
add address=23.50.117.96 list=tiktok
add address=23.221.50.185 list=tiktok
add address=23.211.60.111 list=tiktok
add address=36.91.231.56 list=tiktok
add address=117.103.116.240 list=tiktok
add address=23.39.173.211 list=tiktok
add address=23.221.50.24 list=tiktok
add address=69.192.1.171 list=tiktok
add address=23.205.70.177 list=tiktok
add address=23.47.190.128 list=tiktok
add address=69.192.1.169 list=tiktok
add address=23.205.70.176 list=tiktok
add address=118.98.77.96 list=tiktok
add address=184.29.140.201 list=tiktok
add address=23.215.35.96 list=tiktok
add address=23.206.250.57 list=tiktok
add address=23.221.50.50 list=tiktok
add address=23.219.204.17 list=tiktok
add address=118.98.77.178 list=tiktok
add address=23.48.173.48 list=tiktok
add address=23.206.250.114 list=tiktok
add address=23.38.195.114 list=tiktok
add address=23.38.195.120 list=tiktok
add address=23.206.250.80 list=tiktok
add address=23.206.250.107 list=tiktok
add address=23.49.98.200 list=tiktok
add address=23.49.98.196 list=tiktok
add address=23.38.195.112 list=tiktok
add address=23.38.195.121 list=tiktok
add address=23.49.98.220 list=tiktok
add address=118.98.95.227 list=tiktok
add address=23.39.173.176 list=tiktok
add address=23.39.173.248 list=tiktok
add address=23.39.173.186 list=tiktok
add address=69.192.1.128 list=tiktok
add address=130.44.212.248 list=tiktok
add address=23.212.164.91 list=tiktok
add address=117.103.116.236 list=tiktok
add address=184.87.193.96 list=tiktok
add address=23.206.250.48 list=tiktok
add address=156.240.62.242 list=tiktok
add address=69.192.1.147 list=tiktok
add address=23.39.173.179 list=tiktok
add address=23.72.90.76 list=tiktok
add address=23.212.164.106 list=tiktok
add address=23.38.195.9 list=tiktok
add address=23.209.46.138 list=tiktok
add address=23.209.46.149 list=tiktok
add address=23.212.164.97 list=tiktok
add address=23.39.173.219 list=tiktok
add address=23.39.173.226 list=tiktok
add address=69.192.1.170 list=tiktok
add address=69.192.1.163 list=tiktok
add address=23.219.204.83 list=tiktok
add address=87.245.213.41 list=tiktok
add address=87.245.213.49 list=tiktok
add address=23.219.184.97 list=tiktok
add address=163.181.81.34 list=tiktok
add address=117.103.116.243 list=tiktok
add address=23.219.184.59 list=tiktok
add address=23.215.7.93 list=tiktok
add address=23.219.184.80 list=tiktok
add address=140.213.224.11 list=tiktok
add address=23.49.98.206 list=tiktok
add address=23.49.98.209 list=tiktok
add address=23.49.98.207 list=tiktok
add address=23.216.158.163 list=tiktok
add address=118.97.159.35 list=tiktok
add address=163.181.81.29 list=tiktok
add address=23.39.173.184 list=tiktok
add address=23.206.250.50 list=tiktok
add address=138.199.37.212 list=tiktok
add address=138.199.37.23 list=tiktok
add address=23.38.195.16 list=tiktok
add address=163.181.81.33 list=tiktok
add address=23.212.164.81 list=tiktok
add address=163.181.81.28 list=tiktok
add address=23.206.250.106 list=tiktok
add address=163.181.81.31 list=tiktok
add address=23.215.35.82 list=tiktok
add address=23.206.250.104 list=tiktok
add address=163.181.81.30 list=tiktok
add address=87.245.213.50 list=tiktok
add address=87.245.213.75 list=tiktok
add address=23.216.158.99 list=tiktok
add address=23.215.7.81 list=tiktok
add address=23.49.98.204 list=tiktok
add address=23.219.204.97 list=tiktok
add address=23.49.98.211 list=tiktok
add address=69.192.1.155 list=tiktok
add address=36.91.215.208 list=tiktok
add address=2.21.173.64 list=tiktok
add address=23.221.50.18 list=tiktok
add address=69.192.1.139 list=tiktok
add address=184.87.193.91 list=tiktok
add address=23.47.190.129 list=tiktok
add address=2.16.8.178 list=tiktok
add address=87.245.213.66 list=tiktok
add address=184.87.193.153 list=tiktok
add address=23.216.158.192 list=tiktok
add address=23.212.164.83 list=tiktok
add address=23.216.158.194 list=tiktok
add address=23.212.164.105 list=tiktok
add address=138.199.14.43 list=tiktok
add address=23.50.117.171 list=tiktok
add address=23.212.164.99 list=tiktok
add address=2.16.53.64 list=tiktok
add address=2.16.8.177 list=tiktok
add address=23.38.195.130 list=tiktok
add address=23.205.70.211 list=tiktok
add address=23.72.90.82 list=tiktok
add address=23.72.90.83 list=tiktok
add address=173.222.108.153 list=tiktok
add address=80.67.82.208 list=tiktok
add address=23.39.173.227 list=tiktok
add address=87.245.213.58 list=tiktok
add address=87.245.213.73 list=tiktok
add address=118.97.158.59 list=tiktok
add address=104.114.77.24 list=tiktok
add address=104.114.77.10 list=tiktok
add address=104.114.77.17 list=tiktok
add address=23.205.70.105 list=tiktok
add address=87.245.213.26 list=tiktok
add address=87.245.213.19 list=tiktok
add address=23.38.195.131 list=tiktok
add address=128.1.178.229 list=tiktok
add address=18.64.37.99 list=tiktok
add address=95.100.146.66 list=tiktok
add address=118.98.95.107 list=tiktok
add address=45.136.152.27 list=tiktok
add address=143.244.32.99 list=tiktok
add address=173.222.108.155 list=tiktok
add address=173.222.108.195 list=tiktok
add address=104.77.160.91 list=tiktok
add address=128.1.178.226 list=tiktok
add address=87.245.213.11 list=tiktok
add address=23.216.158.113 list=tiktok
add address=87.245.213.64 list=tiktok
add address=173.222.108.217 list=tiktok
add address=103.160.155.111 list=tiktok
add address=173.222.108.147 list=tiktok
add address=118.98.95.59 list=tiktok
add address=118.98.95.50 list=tiktok
add address=23.49.98.214 list=tiktok
add address=23.49.98.210 list=tiktok
add address=104.77.160.78 list=tiktok
add address=118.98.95.67 list=tiktok
add address=23.49.98.197 list=tiktok
add address=23.219.204.81 list=tiktok
add address=128.1.178.227 list=tiktok
add address=23.219.204.74 list=tiktok
add address=104.77.160.75 list=tiktok
add address=23.49.98.217 list=tiktok
add address=95.101.78.218 list=tiktok
add address=95.101.78.203 list=tiktok
add address=23.212.164.89 list=tiktok
add address=23.212.164.67 list=tiktok
add address=23.32.5.109 list=tiktok
add address=23.209.46.30 list=tiktok
add address=23.215.7.9 list=tiktok
add address=23.215.7.6 list=tiktok
add address=23.38.195.58 list=tiktok
add address=23.61.252.59 list=tiktok
add address=128.1.178.228 list=tiktok
add address=23.38.195.57 list=tiktok
add address=118.97.159.43 list=tiktok
add address=69.192.1.162 list=tiktok
add address=69.192.1.144 list=tiktok
add address=118.97.159.19 list=tiktok
add address=104.77.160.95 list=tiktok
add address=104.114.77.25 list=tiktok
add address=23.219.204.105 list=tiktok
add address=129.227.42.68 list=tiktok
add address=23.206.250.67 list=tiktok
add address=23.206.250.72 list=tiktok
add address=104.114.77.64 list=tiktok
add address=23.211.60.103 list=tiktok
add address=128.1.178.225 list=tiktok
add address=23.48.173.56 list=tiktok
add address=23.215.35.71 list=tiktok
add address=156.59.107.148 list=tiktok
add address=23.219.204.27 list=tiktok
add address=23.38.195.33 list=tiktok
add address=118.97.158.160 list=tiktok
add address=156.59.76.170 list=tiktok
add address=23.209.46.6 list=tiktok
add address=23.209.46.11 list=tiktok
add address=128.1.178.231 list=tiktok
add address=23.205.70.193 list=tiktok
add address=180.250.169.100 list=tiktok
add address=118.97.159.49 list=tiktok
add address=36.86.63.182 list=tiktok
add address=23.38.195.51 list=tiktok
add address=118.97.158.151 list=tiktok
add address=23.38.195.75 list=tiktok
add address=104.77.160.71 list=tiktok
add address=54.192.150.62 list=tiktok
add address=23.72.90.70 list=tiktok
add address=202.56.174.111 list=tiktok
add address=2.16.8.179 list=tiktok
add address=2.16.8.168 list=tiktok
add address=54.192.150.59 list=tiktok
add address=129.227.42.80 list=tiktok
add address=23.209.46.221 list=tiktok
add address=104.114.77.41 list=tiktok
add address=184.87.193.150 list=tiktok
add address=118.98.77.179 list=tiktok
add address=129.227.42.74 list=tiktok
add address=23.216.158.178 list=tiktok
add address=23.219.204.56 list=tiktok
add address=104.114.77.35 list=tiktok
add address=23.38.195.73 list=tiktok
add address=104.114.77.48 list=tiktok
add address=23.206.250.105 list=tiktok
add address=128.14.182.239 list=tiktok
add address=116.206.37.43 list=tiktok
add address=116.206.37.50 list=tiktok
add address=116.206.9.98 list=tiktok
add address=128.14.182.235 list=tiktok
add address=23.212.164.74 list=tiktok
add address=23.61.252.42 list=tiktok
add address=23.212.164.96 list=tiktok
add address=23.200.135.33 list=tiktok
add address=23.215.35.85 list=tiktok
add address=96.17.96.23 list=tiktok
add address=23.209.46.29 list=tiktok
add address=84.53.132.145 list=tiktok
add address=23.61.252.65 list=tiktok
add address=23.212.164.90 list=tiktok
add address=104.114.77.49 list=tiktok
add address=223.255.230.166 list=tiktok
add address=223.255.230.167 list=tiktok
add address=23.200.135.24 list=tiktok
add address=23.209.46.205 list=tiktok
add address=129.227.42.67 list=tiktok
add address=129.227.42.69 list=tiktok
add address=47.246.38.228 list=tiktok
add address=23.209.46.26 list=tiktok
add address=23.38.195.74 list=tiktok
add address=103.52.144.58 list=tiktok
add address=163.181.160.234 list=tiktok
add address=163.181.160.236 list=tiktok
add address=23.38.195.184 list=tiktok
add address=184.84.165.233 list=tiktok
add address=23.209.46.202 list=tiktok
add address=23.61.252.40 list=tiktok
add address=116.206.9.178 list=tiktok
add address=128.14.182.240 list=tiktok
add address=223.255.230.169 list=tiktok
add address=128.14.182.236 list=tiktok
add address=23.206.250.83 list=tiktok
add address=69.192.1.154 list=tiktok
add address=23.219.184.82 list=tiktok
add address=129.227.42.85 list=tiktok
add address=118.98.95.10 list=tiktok
add address=23.72.90.69 list=tiktok
add address=23.209.46.9 list=tiktok
add address=23.209.46.21 list=tiktok
add address=23.209.46.152 list=tiktok
add address=23.2.13.75 list=tiktok
add address=23.206.250.64 list=tiktok
add address=23.206.250.81 list=tiktok
add address=23.219.204.10 list=tiktok
add address=23.206.250.49 list=tiktok
add address=23.209.46.217 list=tiktok
add address=23.209.46.227 list=tiktok
add address=23.209.46.14 list=tiktok
add address=101.33.4.185 list=tiktok
add address=217.198.191.53 list=tiktok
add address=23.39.173.235 list=tiktok
add address=138.113.121.147 list=tiktok
add address=92.122.95.107 list=tiktok
add address=92.122.95.121 list=tiktok
add address=129.227.42.78 list=tiktok
add address=184.87.193.142 list=tiktok
add address=23.219.204.234 list=tiktok
add address=13.226.120.56 list=tiktok
add address=23.47.190.121 list=tiktok
add address=180.250.169.36 list=tiktok
add address=23.209.46.204 list=tiktok
add address=156.251.75.215 list=tiktok
add address=23.215.35.88 list=tiktok
add address=23.206.250.51 list=tiktok
add address=92.122.95.115 list=tiktok
add address=23.38.195.187 list=tiktok
add address=23.49.98.221 list=tiktok
add address=92.122.95.147 list=tiktok
add address=92.122.95.145 list=tiktok
add address=92.122.95.33 list=tiktok
add address=23.209.46.223 list=tiktok
add address=23.209.46.25 list=tiktok
add address=23.209.46.31 list=tiktok
add address=23.195.119.15 list=tiktok
add address=23.206.250.59 list=tiktok
add address=36.89.220.219 list=tiktok
add address=36.89.220.192 list=tiktok
add address=36.89.220.193 list=tiktok
add address=23.209.46.5 list=tiktok
add address=104.114.77.67 list=tiktok
add address=104.114.77.51 list=tiktok
add address=23.212.164.98 list=tiktok
add address=95.101.34.74 list=tiktok
add address=104.114.77.43 list=tiktok
add address=23.206.250.99 list=tiktok
add address=23.206.250.91 list=tiktok
add address=104.114.77.27 list=tiktok
add address=23.206.250.113 list=tiktok
add address=156.59.248.53 list=tiktok
add address=104.114.77.34 list=tiktok
add address=23.209.46.207 list=tiktok
add address=23.209.46.8 list=tiktok
add address=23.215.35.87 list=tiktok
add address=104.114.77.9 list=tiktok
add address=23.47.190.130 list=tiktok
add address=36.89.220.19 list=tiktok
add address=36.89.220.59 list=tiktok
add address=43.152.163.232 list=tiktok
add address=184.25.236.233 list=tiktok
add address=163.181.81.27 list=tiktok
add address=23.209.46.218 list=tiktok
add address=23.206.250.56 list=tiktok
add address=23.206.250.96 list=tiktok
add address=23.1.240.48 list=tiktok
add address=129.227.42.71 list=tiktok
add address=23.206.250.58 list=tiktok
add address=96.17.96.7 list=tiktok
add address=104.114.77.50 list=tiktok
add address=104.114.77.18 list=tiktok
add address=129.227.42.81 list=tiktok
add address=23.209.46.143 list=tiktok
add address=18.161.49.89 list=tiktok
add address=96.17.96.13 list=tiktok
add address=96.16.84.4 list=tiktok
add address=23.63.84.152 list=tiktok
add address=71.18.1.248 list=tiktok
add address=92.122.95.129 list=tiktok
add address=96.17.96.32 list=tiktok
add address=96.17.96.27 list=tiktok
add address=23.209.46.17 list=tiktok
add address=23.209.46.18 list=tiktok
add address=23.62.212.79 list=tiktok
add address=23.215.35.73 list=tiktok
add address=92.122.95.128 list=tiktok
add address=92.122.95.131 list=tiktok
add address=23.38.195.25 list=tiktok
add address=23.209.46.145 list=tiktok
add address=2.16.241.220 list=tiktok
add address=23.216.158.162 list=tiktok
add address=23.216.158.145 list=tiktok
add address=88.221.110.248 list=tiktok
add address=2.16.241.16 list=tiktok
add address=149.104.85.125 list=tiktok
add address=23.39.173.233 list=tiktok
add address=2.19.126.78 list=tiktok
add address=88.221.110.251 list=tiktok
add address=2.16.241.204 list=tiktok
add address=2.16.241.223 list=tiktok
add address=88.221.110.163 list=tiktok
add address=23.215.35.97 list=tiktok
add address=23.209.46.133 list=tiktok
add address=23.215.35.66 list=tiktok
add address=23.215.35.101 list=tiktok
add address=2.16.241.211 list=tiktok
add address=23.38.195.35 list=tiktok
add address=146.75.122.73 list=tiktok
add address=23.38.195.105 list=tiktok
add address=23.215.35.80 list=tiktok
add address=18.154.7.48 list=tiktok
add address=23.215.35.149 list=tiktok
add address=2.16.241.216 list=tiktok
add address=18.161.49.37 list=tiktok
add address=2.16.241.219 list=tiktok
add address=2.16.241.18 list=tiktok
add address=2.16.241.5 list=tiktok
add address=18.161.180.65 list=tiktok
add address=23.200.135.40 list=tiktok
add address=2.16.241.212 list=tiktok
add address=88.221.110.131 list=tiktok
add address=18.67.181.47 list=tiktok
add address=2.16.241.202 list=tiktok
add address=2.16.241.205 list=tiktok
add address=88.221.110.250 list=tiktok
add address=47.246.38.231 list=tiktok
add address=47.246.38.225 list=tiktok
add address=2.16.241.226 list=tiktok
add address=2.16.241.217 list=tiktok
add address=156.59.116.226 list=tiktok
add address=184.87.193.157 list=tiktok
add address=184.87.193.146 list=tiktok
add address=101.33.27.58 list=tiktok
add address=23.38.195.106 list=tiktok
add address=112.215.103.236 list=tiktok
add address=88.221.110.225 list=tiktok
add address=88.221.110.145 list=tiktok
add address=118.98.42.18 list=tiktok
add address=2.16.241.196 list=tiktok
add address=88.221.110.185 list=tiktok
add address=23.38.195.122 list=tiktok
add address=88.221.110.241 list=tiktok
add address=88.221.110.240 list=tiktok
add address=23.219.204.57 list=tiktok
add address=88.221.110.242 list=tiktok
add address=88.221.110.243 list=tiktok
add address=88.221.110.137 list=tiktok
add address=2.19.126.91 list=tiktok
add address=2.19.126.79 list=tiktok
add address=88.221.110.249 list=tiktok
add address=2.16.241.197 list=tiktok
add address=129.227.40.224 list=tiktok
add address=23.215.35.77 list=tiktok
add address=23.216.158.82 list=tiktok
add address=2.16.241.227 list=tiktok
add address=88.221.110.235 list=tiktok
add address=23.219.204.48 list=tiktok
add address=36.91.254.43 list=tiktok
add address=103.84.192.22 list=tiktok
add address=43.152.160.233 list=tiktok
add address=23.38.195.32 list=tiktok
add address=184.27.123.120 list=tiktok
add address=156.59.104.38 list=tiktok
add address=104.116.243.18 list=tiktok
add address=118.98.42.139 list=tiktok
add address=18.154.7.70 list=tiktok
add address=23.215.35.67 list=tiktok
add address=18.67.172.11 list=tiktok
add address=118.98.42.153 list=tiktok
add address=23.38.195.49 list=tiktok
add address=118.98.113.232 list=tiktok
add address=23.221.50.219 list=tiktok
add address=101.33.4.5 list=tiktok
add address=156.59.106.228 list=tiktok
add address=114.10.2.219 list=tiktok
add address=114.10.52.154 list=tiktok
add address=149.104.85.128 list=tiktok
add address=45.121.219.139 list=tiktok
add address=118.98.113.240 list=tiktok
add address=23.219.184.113 list=tiktok
add address=140.213.224.19 list=tiktok
add address=23.38.195.41 list=tiktok
add address=149.104.85.126 list=tiktok
add address=114.10.52.160 list=tiktok
add address=156.59.76.166 list=tiktok
add address=156.59.162.232 list=tiktok
add address=117.103.116.242 list=tiktok
add address=23.50.117.17 list=tiktok
add address=184.87.193.88 list=tiktok
add address=118.98.77.105 list=tiktok
add address=95.101.111.161 list=tiktok
add address=129.227.40.227 list=tiktok
add address=95.101.111.163 list=tiktok
add address=23.216.158.48 list=tiktok
add address=95.101.111.154 list=tiktok
add address=23.215.35.146 list=tiktok
add address=18.67.216.84 list=tiktok
add address=95.101.111.162 list=tiktok
add address=23.192.150.8 list=tiktok
add address=18.67.216.122 list=tiktok
add address=23.38.195.11 list=tiktok
add address=18.67.216.98 list=tiktok
add address=23.64.122.122 list=tiktok
add address=18.64.37.31 list=tiktok
add address=45.121.219.170 list=tiktok
add address=89.187.187.22 list=tiktok
add address=23.38.195.91 list=tiktok
add address=88.221.110.218 list=tiktok
add address=18.67.216.45 list=tiktok
add address=156.59.162.117 list=tiktok
add address=118.98.95.9 list=tiktok
add address=156.240.94.47 list=tiktok
add address=138.199.15.44 list=tiktok
add address=156.59.76.172 list=tiktok
add address=138.199.14.15 list=tiktok
add address=23.47.190.137 list=tiktok
add address=23.47.190.83 list=tiktok
add address=23.38.195.40 list=tiktok
add address=156.59.248.13 list=tiktok
add address=156.59.104.26 list=tiktok
add address=23.215.35.133 list=tiktok
add address=23.38.195.26 list=tiktok
add address=156.59.248.72 list=tiktok
add address=23.38.195.88 list=tiktok
add address=43.152.142.241 list=tiktok
add address=184.27.123.147 list=tiktok
add address=23.39.173.128 list=tiktok
add address=23.48.173.227 list=tiktok
add address=23.39.173.99 list=tiktok
add address=23.48.173.73 list=tiktok
add address=23.48.173.82 list=tiktok
add address=88.221.110.161 list=tiktok
add address=2.16.238.149 list=tiktok
add address=2.16.238.145 list=tiktok
add address=149.104.85.124 list=tiktok
add address=114.10.2.201 list=tiktok
add address=88.221.110.209 list=tiktok
add address=114.10.52.178 list=tiktok
add address=23.48.173.168 list=tiktok
add address=23.48.173.90 list=tiktok
add address=114.10.52.241 list=tiktok
add address=88.221.110.128 list=tiktok
add address=23.48.173.72 list=tiktok
add address=101.33.4.8 list=tiktok
add address=23.215.7.78 list=tiktok
add address=23.48.173.170 list=tiktok
add address=23.48.173.171 list=tiktok
add address=23.48.173.163 list=tiktok
add address=101.33.4.187 list=tiktok
add address=43.132.81.144 list=tiktok
add address=128.1.176.228 list=tiktok
add address=114.10.2.209 list=tiktok
add address=206.84.107.46 list=tiktok
add address=2.16.110.99 list=tiktok
add address=114.10.2.194 list=tiktok
add address=114.10.2.240 list=tiktok
add address=34.149.103.212 list=tiktok
add address=34.36.214.156 list=tiktok
add address=114.10.52.171 list=tiktok
add address=23.38.195.27 list=tiktok
add address=23.64.122.26 list=tiktok
add address=23.216.158.170 list=tiktok
add address=23.215.7.90 list=tiktok
add address=2.17.22.57 list=tiktok
add address=88.221.110.59 list=tiktok
add address=23.48.173.152 list=tiktok
add address=156.253.7.228 list=tiktok
add address=114.10.52.155 list=tiktok
add address=114.10.52.162 list=tiktok
add address=23.59.80.73 list=tiktok
add address=23.216.158.146 list=tiktok
add address=23.64.122.66 list=tiktok
add address=23.216.158.9 list=tiktok
add address=114.10.2.202 list=tiktok
add address=23.64.122.40 list=tiktok
add address=23.64.122.27 list=tiktok
add address=23.39.173.121 list=tiktok
add address=23.64.122.16 list=tiktok
add address=114.10.2.235 list=tiktok
add address=13.33.33.127 list=tiktok
add address=45.121.219.138 list=tiktok
add address=23.32.29.89 list=tiktok
add address=23.48.173.176 list=tiktok
add address=23.52.40.168 list=tiktok
add address=45.121.219.160 list=tiktok
add address=114.10.2.233 list=tiktok
add address=23.48.173.162 list=tiktok
add address=23.216.158.90 list=tiktok
add address=23.52.40.176 list=tiktok
add address=184.25.236.155 list=tiktok
add address=23.48.173.226 list=tiktok
add address=34.111.85.169 list=tiktok
add address=23.64.122.41 list=tiktok
add address=23.39.173.89 list=tiktok
add address=23.48.173.131 list=tiktok
add address=23.48.173.67 list=tiktok
add address=13.33.33.76 list=tiktok
add address=23.48.173.64 list=tiktok
add address=23.48.173.59 list=tiktok
add address=23.48.173.161 list=tiktok
add address=23.48.173.153 list=tiktok
add address=23.48.173.137 list=tiktok
add address=23.48.173.89 list=tiktok
add address=23.48.173.122 list=tiktok
add address=23.48.173.99 list=tiktok
add address=23.48.173.129 list=tiktok
add address=23.52.40.162 list=tiktok
add address=23.216.158.115 list=tiktok
add address=23.48.173.154 list=tiktok
add address=23.48.173.66 list=tiktok
add address=45.121.219.144 list=tiktok
add address=45.121.219.163 list=tiktok
add address=23.48.173.75 list=tiktok
add address=23.48.173.81 list=tiktok
add address=34.95.101.116 list=tiktok
add address=54.192.150.50 list=tiktok
add address=23.48.173.105 list=tiktok
add address=23.203.165.11 list=tiktok
add address=23.216.158.169 list=tiktok
add address=23.48.173.106 list=tiktok
add address=18.161.49.58 list=tiktok
add address=23.48.173.83 list=tiktok
add address=23.48.173.178 list=tiktok
add address=114.125.112.81 list=tiktok
add address=114.124.192.146 list=tiktok
add address=156.59.248.3 list=tiktok
add address=23.216.158.120 list=tiktok
add address=23.38.195.98 list=tiktok
add address=217.198.191.56 list=tiktok
add address=23.48.173.160 list=tiktok
add address=23.216.158.32 list=tiktok
add address=23.216.158.122 list=tiktok
add address=23.216.158.123 list=tiktok
add address=23.216.158.83 list=tiktok
add address=23.213.43.210 list=tiktok
add address=13.33.33.12 list=tiktok
add address=23.59.168.137 list=tiktok
add address=23.59.168.128 list=tiktok
add address=23.38.195.99 list=tiktok
add address=96.17.72.56 list=tiktok
add address=23.52.171.104 list=tiktok
add address=23.59.168.105 list=tiktok
add address=23.59.168.114 list=tiktok
add address=23.59.168.136 list=tiktok
add address=149.104.85.127 list=tiktok
add address=156.59.107.149 list=tiktok
add address=45.121.219.162 list=tiktok
add address=23.59.168.139 list=tiktok
add address=23.59.168.115 list=tiktok
add address=23.59.168.113 list=tiktok
add address=185.180.14.179 list=tiktok
add address=23.59.168.112 list=tiktok
add address=45.121.219.155 list=tiktok
add address=23.216.158.25 list=tiktok
add address=23.59.168.123 list=tiktok
add address=23.59.168.131 list=tiktok
add address=23.59.168.121 list=tiktok
add address=23.48.173.123 list=tiktok
add address=23.48.173.65 list=tiktok
add address=36.89.220.34 list=tiktok
add address=184.28.235.50 list=tiktok
add address=184.28.235.48 list=tiktok
add address=23.48.173.112 list=tiktok
add address=23.213.43.215 list=tiktok
add address=23.48.173.139 list=tiktok
add address=23.213.43.216 list=tiktok
add address=23.216.158.144 list=tiktok
add address=23.213.43.201 list=tiktok
add address=184.87.193.138 list=tiktok
add address=23.38.195.19 list=tiktok
add address=23.36.162.21 list=tiktok
add address=23.36.162.18 list=tiktok
add address=184.24.77.18 list=tiktok
add address=184.24.77.13 list=tiktok
add address=184.24.77.36 list=tiktok
add address=23.36.162.29 list=tiktok
add address=184.24.77.11 list=tiktok
add address=23.36.162.11 list=tiktok
add address=45.121.219.137 list=tiktok
add address=23.213.43.213 list=tiktok
add address=23.36.162.22 list=tiktok
add address=23.213.43.220 list=tiktok
add address=23.36.162.12 list=tiktok
add address=23.216.158.33 list=tiktok
add address=184.24.77.39 list=tiktok
add address=184.24.77.32 list=tiktok
add address=184.24.77.43 list=tiktok
add address=23.36.162.14 list=tiktok
add address=23.36.162.16 list=tiktok
add address=10.0.0.0/8 list=private-local
add address=192.168.0.0/16 list=private-local
add address=172.16.0.0/12 list=private-local
add address=yougetsignal.com list=speedtest
add address=xmyip.com list=speedtest
add address=www.yougetsignal.com list=speedtest
add address=expressvpn.com list=speedtest
add address=www.expressvpn.com list=speedtest
add address=whatismyip.net list=speedtest
add address=speedtestcustom.com comment=whatismyip.net list=speedtest
add address=income.speedtestcustom.com comment=speedtestcustom.com list=\
    speedtest
add address=iplocation.net comment=income.speedtestcustom.com list=speedtest
add address=www.iplocation.net comment=iplocation.net list=speedtest
add address=www.astrill.com comment=www.iplocation.net list=speedtest
add address=www.privateinternetaccess.com comment=www.astrill.com list=\
    speedtest
add address=mxtoolbox.com comment=www.privateinternetaccess.com list=\
    speedtest
add address=ifconfig.co comment=mxtoolbox.com list=speedtest
add address=whatismyip.org comment=ifconfig.co list=speedtest
add address=www.goldenfrog.com comment=whatismyip.org list=speedtest
add address=www.mxtoolbox.com comment=www.goldenfrog.com list=speedtest
add address=www.ultratools.com comment=www.mxtoolbox.com list=speedtest
add address=www.ip-adress.eu comment=www.ultratools.com list=speedtest
add address=iplogger.org list=speedtest
add address=www.vermiip.es list=speedtest
add address=www.purevpn.com list=speedtest
add address=www.whatismybrowser.com list=speedtest
add address=zenmate.com list=speedtest
add address=www.ipchicken.com list=speedtest
add address=bittrex.com list=speedtest
add address=whatismyip.li list=speedtest
add address=www.ipburger.com list=speedtest
add address=cbn.net.id list=speedtest
add address=whatismyip4.com list=speedtest
add address=www.inmotionhosting.com list=speedtest
add address=nordvpn.com list=speedtest
add address=wolframalpha.com list=speedtest
add address=cactusvpn.com list=speedtest
add address=www.cactusvpn.com list=speedtest
add address=m.wolframalpha.com list=speedtest
add address=ipcow.com list=speedtest
add address=whatismycountry.com list=speedtest
add address=passwordsgenerator.net list=speedtest
add address=att-services.net list=speedtest
add address=wtfismyip.com list=speedtest
add address=whatismyip.network list=speedtest
add address=ipinfo.info list=speedtest
add address=encodable.com list=speedtest
add address=www.overplay.net list=speedtest
add address=myipaddress.com list=speedtest
add address=www.myipaddress.com list=speedtest
add address=whoer.net list=speedtest
add address=whatismyip.com list=speedtest
add address=www.speedtest.net list=speedtest
add address=c.speedtest.net list=speedtest
add address=www.ipleak.net list=speedtest
add address=ipleak.net list=speedtest
add address=whatismyipaddress.com list=speedtest
add address=whatismyip.host list=speedtest
add address=bearsmyip.com list=speedtest
add address=check-host.net list=speedtest
add address=hide.me list=speedtest
add address=ipv6test.hide.me list=speedtest
add address=ipleak.com list=speedtest
add address=www.perfect-privacy.com list=speedtest
add address=perfect-privacy.com list=speedtest
add address=www.whatsmyip.org list=speedtest
add address=whatsmyip.org list=speedtest
add address=speedtest.net list=speedtest
add address=dukom.speedtestcustom.com list=speedtest
add address=shopee.co.id list=market
add address=www.shopee.co.id list=market
add address=103.70.16.0/22 list=market
add address=143.92.81.0/24 comment=shopee.co.id list=market
add address=103.115.76.0/22 comment=shopee.co.id list=market
add address=www.tokopedia.com list=market
add address=tokopedia.com list=market
add address=tokopedia.net list=market
add address=bukalapak.com list=market
add address=www.bukalapak.com list=market
add address=www.blibli.com list=market
add address=blibli.com list=market
add address=jd.id list=market
add address=www.jd.id list=market
add address=bgp.he.net list=speedtest
add address=31.13.24.0/21 list=facebook
add address=31.13.64.0/18 list=facebook
add address=31.13.64.0/24 list=facebook
add address=31.13.65.0/24 list=facebook
add address=31.13.66.0/24 list=facebook
add address=31.13.67.0/24 list=facebook
add address=31.13.68.0/24 list=facebook
add address=31.13.69.0/24 list=facebook
add address=31.13.70.0/24 list=facebook
add address=31.13.71.0/24 list=facebook
add address=31.13.72.0/24 list=facebook
add address=31.13.73.0/24 list=facebook
add address=31.13.74.0/24 list=facebook
add address=31.13.75.0/24 list=facebook
add address=31.13.76.0/24 list=facebook
add address=31.13.77.0/24 list=facebook
add address=31.13.78.0/24 list=facebook
add address=31.13.79.0/24 list=facebook
add address=31.13.80.0/24 list=facebook
add address=31.13.81.0/24 list=facebook
add address=31.13.82.0/24 list=facebook
add address=31.13.83.0/24 list=facebook
add address=31.13.84.0/24 list=facebook
add address=31.13.85.0/24 list=facebook
add address=31.13.86.0/24 list=facebook
add address=31.13.87.0/24 list=facebook
add address=31.13.88.0/24 list=facebook
add address=31.13.89.0/24 list=facebook
add address=31.13.92.0/24 list=facebook
add address=31.13.93.0/24 list=facebook
add address=31.13.94.0/24 list=facebook
add address=31.13.95.0/24 list=facebook
add address=31.13.96.0/19 list=facebook
add address=45.64.40.0/22 list=facebook
add address=66.220.144.0/20 list=facebook
add address=66.220.144.0/21 list=facebook
add address=66.220.152.0/21 list=facebook
add address=69.63.176.0/20 list=facebook
add address=69.63.176.0/21 list=facebook
add address=69.63.184.0/21 list=facebook
add address=69.171.224.0/19 list=facebook
add address=69.171.224.0/20 list=facebook
add address=69.171.240.0/20 list=facebook
add address=69.171.250.0/24 list=facebook
add address=74.119.76.0/22 list=facebook
add address=102.132.96.0/20 list=facebook
add address=102.132.96.0/24 list=facebook
add address=102.132.99.0/24 list=facebook
add address=102.132.100.0/24 list=facebook
add address=102.132.101.0/24 list=facebook
add address=103.4.96.0/22 list=facebook
add address=129.134.0.0/17 list=facebook
add address=129.134.25.0/24 list=facebook
add address=129.134.26.0/24 list=facebook
add address=129.134.27.0/24 list=facebook
add address=129.134.28.0/24 list=facebook
add address=129.134.29.0/24 list=facebook
add address=129.134.30.0/23 list=facebook
add address=129.134.30.0/24 list=facebook
add address=129.134.31.0/24 list=facebook
add address=129.134.65.0/24 list=facebook
add address=129.134.66.0/24 list=facebook
add address=129.134.67.0/24 list=facebook
add address=129.134.68.0/24 list=facebook
add address=129.134.69.0/24 list=facebook
add address=129.134.70.0/24 list=facebook
add address=129.134.71.0/24 list=facebook
add address=129.134.72.0/24 list=facebook
add address=129.134.73.0/24 list=facebook
add address=129.134.74.0/24 list=facebook
add address=129.134.75.0/24 list=facebook
add address=129.134.76.0/24 list=facebook
add address=129.134.79.0/24 list=facebook
add address=129.134.160.0/24 list=facebook
add address=157.240.0.0/17 list=facebook
add address=157.240.2.0/24 list=facebook
add address=157.240.3.0/24 list=facebook
add address=157.240.6.0/24 list=facebook
add address=157.240.7.0/24 list=facebook
add address=157.240.8.0/24 list=facebook
add address=157.240.9.0/24 list=facebook
add address=157.240.10.0/24 list=facebook
add address=157.240.11.0/24 list=facebook
add address=157.240.12.0/24 list=facebook
add address=157.240.13.0/24 list=facebook
add address=157.240.14.0/24 list=facebook
add address=157.240.15.0/24 list=facebook
add address=157.240.16.0/24 list=facebook
add address=157.240.17.0/24 list=facebook
add address=157.240.18.0/24 list=facebook
add address=157.240.19.0/24 list=facebook
add address=157.240.20.0/24 list=facebook
add address=157.240.21.0/24 list=facebook
add address=157.240.22.0/24 list=facebook
add address=157.240.24.0/24 list=facebook
add address=157.240.25.0/24 list=facebook
add address=157.240.26.0/24 list=facebook
add address=157.240.27.0/24 list=facebook
add address=157.240.28.0/24 list=facebook
add address=157.240.30.0/24 list=facebook
add address=157.240.192.0/18 list=facebook
add address=157.240.194.0/24 list=facebook
add address=157.240.195.0/24 list=facebook
add address=157.240.196.0/24 list=facebook
add address=157.240.197.0/24 list=facebook
add address=157.240.198.0/24 list=facebook
add address=157.240.199.0/24 list=facebook
add address=157.240.200.0/24 list=facebook
add address=157.240.201.0/24 list=facebook
add address=157.240.204.0/24 list=facebook
add address=157.240.205.0/24 list=facebook
add address=157.240.206.0/24 list=facebook
add address=157.240.207.0/24 list=facebook
add address=157.240.208.0/24 list=facebook
add address=157.240.209.0/24 list=facebook
add address=157.240.210.0/24 list=facebook
add address=157.240.211.0/24 list=facebook
add address=157.240.212.0/24 list=facebook
add address=157.240.213.0/24 list=facebook
add address=157.240.214.0/24 list=facebook
add address=157.240.215.0/24 list=facebook
add address=157.240.216.0/24 list=facebook
add address=157.240.217.0/24 list=facebook
add address=157.240.218.0/24 list=facebook
add address=157.240.220.0/24 list=facebook
add address=157.240.221.0/24 list=facebook
add address=157.240.222.0/24 list=facebook
add address=157.240.223.0/24 list=facebook
add address=157.240.224.0/24 list=facebook
add address=157.240.225.0/24 list=facebook
add address=157.240.226.0/24 list=facebook
add address=157.240.227.0/24 list=facebook
add address=157.240.229.0/24 list=facebook
add address=157.240.231.0/24 list=facebook
add address=157.240.232.0/24 list=facebook
add address=157.240.233.0/24 list=facebook
add address=157.240.234.0/24 list=facebook
add address=157.240.235.0/24 list=facebook
add address=157.240.236.0/24 list=facebook
add address=157.240.239.0/24 list=facebook
add address=157.240.240.0/24 list=facebook
add address=157.240.241.0/24 list=facebook
add address=173.252.64.0/19 list=facebook
add address=173.252.88.0/21 list=facebook
add address=173.252.96.0/19 list=facebook
add address=179.60.192.0/22 list=facebook
add address=179.60.192.0/24 list=facebook
add address=179.60.194.0/24 list=facebook
add address=179.60.195.0/24 list=facebook
add address=185.60.216.0/22 list=facebook
add address=185.60.216.0/24 list=facebook
add address=185.60.217.0/24 list=facebook
add address=185.60.218.0/24 list=facebook
add address=185.89.218.0/23 list=facebook
add address=185.89.218.0/24 list=facebook
add address=185.89.219.0/24 list=facebook
add address=204.15.20.0/22 list=facebook
add address=whoismyip.org list=speedtest
add address=whoismyisp.org list=speedtest
add address=myip.com list=speedtest
add address=ipaddress.my list=speedtest
add address=ipcost.com list=speedtest
add address=ipleak.org list=speedtest
add address=tiktok.com list=tiktok
add address=twitter.com list=twitter
add address=23.217.52.170 list=tiktok
add address=23.216.158.18 list=tiktok
add address=45.121.219.147 list=tiktok
add address=140.213.23.90 list=tiktok
add address=112.215.161.27 list=tiktok
add address=23.213.43.197 list=tiktok
add address=45.121.219.188 list=tiktok
add address=23.213.43.212 list=tiktok
add address=23.213.43.214 list=tiktok
add address=23.219.184.130 list=tiktok
add address=23.219.184.163 list=tiktok
add address=23.213.43.198 list=tiktok
add address=23.213.43.199 list=tiktok
add address=23.219.184.139 list=tiktok
add address=23.213.43.208 list=tiktok
add address=23.213.43.219 list=tiktok
add address=23.49.60.49 list=tiktok
add address=23.213.43.202 list=tiktok
add address=23.59.168.97 list=tiktok
add address=23.216.158.177 list=tiktok
add address=23.59.168.96 list=tiktok
add address=23.46.63.58 list=tiktok
add address=23.44.4.35 list=tiktok
add address=23.44.4.56 list=tiktok
add address=23.219.184.99 list=tiktok
add address=23.216.158.107 list=tiktok
add address=112.215.161.8 list=tiktok
add address=104.126.37.128 list=tiktok
add address=23.36.163.227 list=tiktok
add address=23.36.163.236 list=tiktok
add address=104.126.37.144 list=tiktok
add address=23.44.4.128 list=tiktok
add address=23.44.4.114 list=tiktok
add address=23.59.168.122 list=tiktok
add address=23.59.168.99 list=tiktok
add address=23.213.161.205 list=tiktok
add address=23.213.161.196 list=tiktok
add address=95.101.27.102 list=tiktok
add address=23.213.161.219 list=tiktok
add address=23.55.161.201 list=tiktok
add address=95.101.27.69 list=tiktok
add address=95.101.27.67 list=tiktok
add address=23.213.161.213 list=tiktok
add address=95.101.27.97 list=tiktok
add address=23.213.161.208 list=tiktok
add address=23.213.161.209 list=tiktok
add address=95.101.27.85 list=tiktok
add address=23.213.161.201 list=tiktok
add address=95.101.27.93 list=tiktok
add address=23.213.161.221 list=tiktok
add address=95.101.27.101 list=tiktok
add address=35.157.183.163 list=tiktok
add address=23.216.158.24 list=tiktok
add address=23.38.195.144 list=tiktok
add address=23.216.158.114 list=tiktok
add address=23.59.168.107 list=tiktok
add address=23.38.195.147 list=tiktok
add address=23.50.117.179 list=tiktok
add address=23.213.43.217 list=tiktok
add address=23.59.80.75 list=tiktok
add address=23.213.43.205 list=tiktok
add address=23.213.43.224 list=tiktok
add address=23.213.43.196 list=tiktok
add address=23.48.173.130 list=tiktok
add address=143.244.32.12 list=tiktok
add address=23.213.43.222 list=tiktok
add address=23.48.173.107 list=tiktok
add address=184.87.193.136 list=tiktok
add address=96.17.72.33 list=tiktok
add address=23.213.43.200 list=tiktok
add address=23.52.171.106 list=tiktok
add address=23.64.122.33 list=tiktok
add address=23.64.122.10 list=tiktok
add address=125.56.219.58 list=tiktok
add address=103.160.155.95 list=tiktok
add address=23.59.168.98 list=tiktok
add address=23.216.158.80 list=tiktok
add address=23.216.158.73 list=tiktok
add address=156.59.162.116 list=tiktok
add address=23.59.168.104 list=tiktok
add address=23.48.173.91 list=tiktok
add address=3.122.148.228 list=tiktok
add address=23.221.50.129 list=tiktok
add address=23.59.168.106 list=tiktok
add address=23.48.173.155 list=tiktok
add address=23.214.169.221 list=tiktok
add address=154.94.23.152 list=tiktok
add address=23.216.158.51 list=tiktok
add address=23.216.158.65 list=tiktok
add address=23.216.158.106 list=tiktok
add address=23.39.173.177 list=tiktok
add address=23.59.168.138 list=tiktok
add address=23.216.158.98 list=tiktok
add address=139.177.239.129 list=tiktok
add address=23.48.173.80 list=tiktok
add address=23.47.190.155 list=tiktok
add address=23.219.204.9 list=tiktok
add address=23.216.158.27 list=tiktok
add address=23.219.204.49 list=tiktok
add address=23.215.35.98 list=tiktok
add address=23.55.163.42 list=tiktok
add address=23.55.163.39 list=tiktok
add address=23.55.163.6 list=tiktok
add address=95.101.27.104 list=tiktok
add address=23.213.161.137 list=tiktok
add address=23.213.161.145 list=tiktok
add address=23.55.163.15 list=tiktok
add address=23.55.163.29 list=tiktok
add address=23.55.163.23 list=tiktok
add address=23.55.161.183 list=tiktok
add address=23.55.161.186 list=tiktok
add address=95.101.27.88 list=tiktok
add address=23.55.163.11 list=tiktok
add address=71.18.1.224 list=tiktok
add address=95.101.27.76 list=tiktok
add address=23.55.161.192 list=tiktok
add address=23.55.163.27 list=tiktok
add address=23.55.163.13 list=tiktok
add address=23.39.173.193 list=tiktok
add address=23.39.173.194 list=tiktok
add address=95.101.27.87 list=tiktok
add address=23.55.163.38 list=tiktok
add address=95.101.27.114 list=tiktok
add address=23.215.35.90 list=tiktok
add address=95.101.27.72 list=tiktok
add address=95.101.27.91 list=tiktok
add address=23.55.163.33 list=tiktok
add address=95.101.27.122 list=tiktok
add address=23.55.163.14 list=tiktok
add address=23.55.163.43 list=tiktok
add address=95.101.27.80 list=tiktok
add address=71.18.2.224 list=tiktok
add address=118.98.77.184 list=tiktok
add address=23.38.195.10 list=tiktok
add address=23.47.190.89 list=tiktok
add address=154.94.23.64 list=tiktok
add address=23.47.190.194 list=tiktok
add address=23.219.204.232 list=tiktok
add address=23.216.158.153 list=tiktok
add address=23.59.168.130 list=tiktok
add address=23.47.190.161 list=tiktok
add address=23.64.122.9 list=tiktok
add address=23.64.122.25 list=tiktok
add address=79.140.95.218 list=tiktok
add address=79.140.95.209 list=tiktok
add address=23.47.190.177 list=tiktok
add address=23.219.204.32 list=tiktok
add address=23.213.161.212 list=tiktok
add address=23.47.190.178 list=tiktok
add address=36.91.215.234 list=tiktok
add address=23.219.204.65 list=tiktok
add address=23.219.204.16 list=tiktok
add address=23.216.158.91 list=tiktok
add address=143.244.32.100 list=tiktok
add address=23.216.158.89 list=tiktok
add address=156.59.162.115 list=tiktok
add address=23.219.204.51 list=tiktok
add address=23.219.204.67 list=tiktok
add address=23.64.122.24 list=tiktok
add address=23.49.60.201 list=tiktok
add address=118.98.42.177 list=tiktok
add address=118.98.42.179 list=tiktok
add address=143.244.42.48 list=tiktok
add address=95.101.27.99 list=tiktok
add address=118.98.113.241 list=tiktok
add address=36.66.90.223 list=tiktok
add address=184.87.193.162 list=tiktok
add address=114.10.2.218 list=tiktok
add address=185.180.15.74 list=tiktok
add address=45.136.152.16 list=tiktok
add address=114.10.2.210 list=tiktok
add address=23.49.60.160 list=tiktok
add address=23.215.35.86 list=tiktok
add address=140.213.224.33 list=tiktok
add address=23.219.184.57 list=tiktok
add address=23.219.184.11 list=tiktok
add address=23.47.190.216 list=tiktok
add address=156.251.71.121 list=tiktok
add address=23.48.173.50 list=tiktok
add address=118.98.113.248 list=tiktok
add address=23.49.60.146 list=tiktok
add address=23.59.168.129 list=tiktok
add address=23.39.173.200 list=tiktok
add address=23.219.204.217 list=tiktok
add address=23.39.173.234 list=tiktok
add address=23.215.35.92 list=tiktok
add address=23.39.173.203 list=tiktok
add address=23.49.60.153 list=tiktok
add address=23.49.60.137 list=tiktok
add address=23.216.158.161 list=tiktok
add address=184.87.193.83 list=tiktok
add address=23.49.60.144 list=tiktok
add address=36.91.231.59 list=tiktok
add address=23.215.35.70 list=tiktok
add address=23.39.173.216 list=tiktok
add address=23.47.190.106 list=tiktok
add address=23.49.60.138 list=tiktok
add address=23.49.60.130 list=tiktok
add address=23.38.195.48 list=tiktok
add address=23.32.29.107 list=tiktok
add address=23.215.215.184 list=tiktok
add address=23.40.241.186 list=tiktok
add address=23.47.190.88 list=tiktok
add address=23.221.50.233 list=tiktok
add address=184.87.193.151 list=tiktok
add address=23.50.117.83 list=tiktok
add address=23.47.190.104 list=tiktok
add address=156.245.9.41 list=tiktok
add address=23.61.205.10 list=tiktok
add address=23.61.205.11 list=tiktok
add address=23.47.190.208 list=tiktok
add address=23.49.60.154 list=tiktok
add address=23.49.60.175 list=tiktok
add address=118.98.42.168 list=tiktok
add address=23.49.60.161 list=tiktok
add address=118.98.113.251 list=tiktok
add address=23.192.150.21 list=tiktok
add address=23.49.60.136 list=tiktok
add address=23.47.190.120 list=tiktok
add address=45.136.152.17 list=tiktok
add address=87.119.3.89 list=tiktok
add address=23.219.204.72 list=tiktok
add address=23.216.158.97 list=tiktok
add address=23.32.29.90 list=tiktok
add address=23.213.43.211 list=tiktok
add address=23.216.158.139 list=tiktok
add address=101.33.4.197 list=tiktok
add address=23.216.158.130 list=tiktok
add address=23.214.169.229 list=tiktok
add address=23.50.117.48 list=tiktok
add address=23.200.135.16 list=tiktok
add address=23.50.117.51 list=tiktok
add address=23.50.117.43 list=tiktok
add address=118.98.95.64 list=tiktok
add address=138.199.15.45 list=tiktok
add address=138.199.14.13 list=tiktok
add address=43.152.14.202 list=tiktok
add address=156.245.9.48 list=tiktok
add address=156.245.9.44 list=tiktok
add address=23.32.29.97 list=tiktok
add address=23.38.195.152 list=tiktok
add address=23.216.158.137 list=tiktok
add address=38.60.187.25 list=tiktok
add address=23.64.122.72 list=tiktok
add address=23.64.122.49 list=tiktok
add address=23.47.190.219 list=tiktok
add address=184.28.229.59 list=tiktok
add address=23.216.158.104 list=tiktok
add address=23.221.50.202 list=tiktok
add address=23.221.50.192 list=tiktok
add address=2.16.241.225 list=tiktok
add address=88.221.110.210 list=tiktok
add address=88.221.110.74 list=tiktok
add address=88.221.110.216 list=tiktok
add address=88.221.110.83 list=tiktok
add address=2.16.238.139 list=tiktok
add address=2.16.241.199 list=tiktok
add address=88.221.110.177 list=tiktok
add address=23.216.158.176 list=tiktok
add address=18.64.18.129 list=tiktok
add address=2.16.238.135 list=tiktok
add address=2.16.241.200 list=tiktok
add address=88.221.110.107 list=tiktok
add address=2.16.241.215 list=tiktok
add address=2.16.241.218 list=tiktok
add address=38.60.187.21 list=tiktok
add address=88.221.110.139 list=tiktok
add address=2.16.241.210 list=tiktok
add address=23.216.158.105 list=tiktok
add address=2.16.241.222 list=tiktok
add address=184.28.229.120 list=tiktok
add address=138.199.15.21 list=tiktok
add address=23.216.158.136 list=tiktok
add address=23.216.158.154 list=tiktok
add address=2.16.241.213 list=tiktok
add address=23.64.122.8 list=tiktok
add address=23.221.50.225 list=tiktok
add address=23.209.46.206 list=tiktok
add address=2.16.241.207 list=tiktok
add address=34.117.119.146 list=tiktok
add address=88.221.110.170 list=tiktok
add address=88.221.110.169 list=tiktok
add address=2.16.238.154 list=tiktok
add address=114.10.2.248 list=tiktok
add address=114.10.2.200 list=tiktok
add address=114.10.52.235 list=tiktok
add address=114.10.2.232 list=tiktok
add address=114.10.2.225 list=tiktok
add address=114.10.2.224 list=tiktok
add address=114.10.52.192 list=tiktok
add address=114.10.2.195 list=tiktok
add address=114.10.2.242 list=tiktok
add address=114.10.2.208 list=tiktok
add address=23.50.117.16 list=tiktok
add address=23.221.50.226 list=tiktok
add address=2.17.22.59 list=tiktok
add address=23.221.50.227 list=tiktok
add address=2.17.22.64 list=tiktok
add address=23.50.117.32 list=tiktok
add address=23.213.43.223 list=tiktok
add address=92.223.116.253 list=tiktok
add address=156.245.4.170 list=tiktok
add address=138.199.15.50 list=tiktok
add address=207.211.208.172 list=tiktok
add address=207.211.208.181 list=tiktok
add address=23.221.50.232 list=tiktok
add address=13.33.88.89 list=tiktok
add address=23.50.117.19 list=tiktok
add address=140.213.23.88 list=tiktok
add address=140.213.23.72 list=tiktok
add address=114.124.128.88 list=tiktok
add address=23.39.173.160 list=tiktok
add address=156.251.71.122 list=tiktok
add address=23.39.173.201 list=tiktok
add address=118.98.42.82 list=tiktok
add address=118.98.42.73 list=tiktok
add address=23.39.173.161 list=tiktok
add address=118.98.95.120 list=tiktok
add address=23.39.173.187 list=tiktok
add address=13.33.146.58 list=tiktok
add address=23.49.60.210 list=tiktok
add address=23.219.204.88 list=tiktok
add address=23.219.204.24 list=tiktok
add address=23.39.173.26 list=tiktok
add address=23.39.173.49 list=tiktok
add address=23.39.173.59 list=tiktok
add address=23.39.173.18 list=tiktok
add address=23.39.173.16 list=tiktok
add address=23.221.50.48 list=tiktok
add address=23.221.50.73 list=tiktok
add address=23.39.173.178 list=tiktok
add address=23.49.60.151 list=tiktok
add address=23.50.117.75 list=tiktok
add address=23.39.173.155 list=tiktok
add address=23.39.173.241 list=tiktok
add address=23.39.173.224 list=tiktok
add address=23.39.173.202 list=tiktok
add address=23.221.50.57 list=tiktok
add address=2.17.22.195 list=tiktok
add address=23.39.173.225 list=tiktok
add address=23.47.190.163 list=tiktok
add address=156.245.9.49 list=tiktok
add address=23.215.35.152 list=tiktok
add address=129.227.47.173 list=tiktok
add address=184.87.193.74 list=tiktok
add address=23.192.150.16 list=tiktok
add address=2.17.22.11 list=tiktok
add address=2.17.22.33 list=tiktok
add address=2.17.22.17 list=tiktok
add address=2.17.22.18 list=tiktok
add address=104.90.205.160 list=tiktok
add address=104.90.205.161 list=tiktok
add address=88.221.213.144 list=tiktok
add address=2.17.22.25 list=tiktok
add address=23.48.173.43 list=tiktok
add address=104.116.243.185 list=tiktok
add address=23.199.69.195 list=tiktok
add address=23.32.29.88 list=tiktok
add address=184.87.193.78 list=tiktok
add address=104.116.243.161 list=tiktok
add address=104.116.243.73 list=tiktok
add address=23.39.173.209 list=tiktok
add address=23.216.158.16 list=tiktok
add address=23.211.60.115 list=tiktok
add address=23.221.50.195 list=tiktok
add address=138.199.14.40 list=tiktok
add address=104.116.243.16 list=tiktok
add address=118.98.76.240 list=tiktok
add address=118.98.76.235 list=tiktok
add address=2.17.22.41 list=tiktok
add address=2.17.22.51 list=tiktok
add address=104.116.243.33 list=tiktok
add address=23.67.57.218 list=tiktok
add address=23.200.142.200 list=tiktok
add address=23.216.158.128 list=tiktok
add address=23.213.43.206 list=tiktok
add address=23.219.204.11 list=tiktok
add address=23.213.43.218 list=tiktok
add address=114.4.168.226 list=tiktok
add address=114.4.168.234 list=tiktok
add address=116.206.37.24 list=tiktok
add address=156.251.75.216 list=tiktok
add address=2.17.22.65 list=tiktok
add address=128.14.182.237 list=tiktok
add address=2.17.22.187 list=tiktok
add address=128.14.182.234 list=tiktok
add address=116.206.9.171 list=tiktok
add address=45.121.219.208 list=tiktok
add address=23.47.190.115 list=tiktok
add address=23.216.158.96 list=tiktok
add address=23.39.173.210 list=tiktok
add address=92.122.166.176 list=tiktok
add address=92.122.95.40 list=tiktok
add address=104.116.243.11 list=tiktok
add address=23.195.119.11 list=tiktok
add address=92.122.166.170 list=tiktok
add address=43.132.80.195 list=tiktok
add address=23.213.43.221 list=tiktok
add address=23.33.33.96 list=tiktok
add address=23.33.33.105 list=tiktok
add address=184.29.140.218 list=tiktok
add address=104.116.243.160 list=tiktok
add address=23.206.250.88 list=tiktok
add address=23.211.60.116 list=tiktok
add address=92.122.218.163 list=tiktok
add address=23.2.13.17 list=tiktok
add address=23.206.250.90 list=tiktok
add address=23.193.96.122 list=tiktok
add address=23.193.96.72 list=tiktok
add address=23.50.117.163 list=tiktok
add address=156.59.76.167 list=tiktok
add address=184.27.122.24 list=tiktok
add address=23.199.69.161 list=tiktok
add address=104.116.243.75 list=tiktok
add address=23.211.60.104 list=tiktok
add address=23.211.60.105 list=tiktok
add address=23.211.60.100 list=tiktok
add address=18.154.7.52 list=tiktok
add address=23.206.250.97 list=tiktok
add address=43.152.15.202 list=tiktok
add address=23.199.69.211 list=tiktok
add address=23.195.119.7 list=tiktok
add address=23.195.119.17 list=tiktok
add address=23.215.35.143 list=tiktok
add address=23.211.60.107 list=tiktok
add address=84.53.132.146 list=tiktok
add address=23.63.108.192 list=tiktok
add address=96.17.96.6 list=tiktok
add address=2.20.71.80 list=tiktok
add address=95.100.146.82 list=tiktok
add address=95.100.146.67 list=tiktok
add address=108.138.141.23 list=tiktok
add address=23.206.250.74 list=tiktok
add address=92.122.166.179 list=tiktok
add address=92.122.166.169 list=tiktok
add address=92.122.166.177 list=tiktok
add address=23.63.108.194 list=tiktok
add address=23.206.250.89 list=tiktok
add address=104.77.160.87 list=tiktok
add address=156.236.20.134 list=tiktok
add address=23.195.119.16 list=tiktok
add address=23.195.119.12 list=tiktok
add address=92.122.95.120 list=tiktok
add address=184.25.236.91 list=tiktok
add address=163.181.42.230 list=tiktok
add address=71.18.74.192 list=tiktok
add address=88.221.213.185 list=tiktok
add address=88.221.110.90 list=tiktok
add address=88.221.110.200 list=tiktok
add address=88.221.110.122 list=tiktok
add address=143.244.42.49 list=tiktok
add address=69.192.1.161 list=tiktok
add address=18.67.172.37 list=tiktok
add address=92.123.180.147 list=tiktok
add address=69.192.1.168 list=tiktok
add address=104.90.205.147 list=tiktok
add address=104.90.205.131 list=tiktok
add address=2.16.100.137 list=tiktok
add address=23.219.205.83 list=tiktok
add address=23.219.205.43 list=tiktok
add address=69.192.1.146 list=tiktok
add address=23.219.205.57 list=tiktok
add address=2.17.22.171 list=tiktok
add address=23.219.204.160 list=tiktok
add address=23.205.70.90 list=tiktok
add address=92.122.95.27 list=tiktok
add address=104.114.77.16 list=tiktok
add address=23.1.254.168 list=tiktok
add address=23.1.254.169 list=tiktok
add address=92.122.95.114 list=tiktok
add address=92.122.95.122 list=tiktok
add address=92.122.166.182 list=tiktok
add address=96.17.96.10 list=tiktok
add address=96.17.96.12 list=tiktok
add address=2.17.22.26 list=tiktok
add address=92.122.95.48 list=tiktok
add address=92.122.95.106 list=tiktok
add address=118.98.95.33 list=tiktok
add address=95.101.34.80 list=tiktok
add address=104.114.77.66 list=tiktok
add address=2.20.71.77 list=tiktok
add address=2.20.71.73 list=tiktok
add address=2.20.71.79 list=tiktok
add address=23.206.250.82 list=tiktok
add address=149.104.85.123 list=tiktok
add address=104.90.205.137 list=tiktok
add address=2.20.71.75 list=tiktok
add address=92.122.218.136 list=tiktok
add address=92.122.95.139 list=tiktok
add address=92.122.218.145 list=tiktok
add address=92.122.218.114 list=tiktok
add address=43.132.80.158 list=tiktok
add address=92.122.166.212 list=tiktok
add address=184.29.140.215 list=tiktok
add address=92.122.218.131 list=tiktok
add address=92.122.218.162 list=tiktok
add address=92.122.218.160 list=tiktok
add address=92.122.218.130 list=tiktok
add address=117.103.116.239 list=tiktok
add address=23.39.173.170 list=tiktok
add address=163.181.81.32 list=tiktok
add address=69.192.1.129 list=tiktok
add address=23.206.250.98 list=tiktok
add address=2.17.22.50 list=tiktok
add address=2.17.22.58 list=tiktok
add address=23.72.90.87 list=tiktok
add address=92.122.166.214 list=tiktok
add address=92.122.166.180 list=tiktok
add address=92.122.166.174 list=tiktok
add address=118.98.42.9 list=tiktok
add address=118.98.95.18 list=tiktok
add address=118.98.95.24 list=tiktok
add address=23.1.254.208 list=tiktok
add address=140.213.224.49 list=tiktok
add address=2.20.71.70 list=tiktok
add address=140.213.50.208 list=tiktok
add address=140.213.50.203 list=tiktok
add address=104.114.77.58 list=tiktok
add address=104.114.77.57 list=tiktok
add address=171.102.20.240 list=tiktok
add address=104.114.77.72 list=tiktok
add address=104.114.77.82 list=tiktok
add address=36.89.220.26 list=tiktok
add address=92.122.166.164 list=tiktok
add address=2.21.109.17 list=tiktok
add address=2.21.109.34 list=tiktok
add address=36.89.220.33 list=tiktok
add address=92.122.218.146 list=tiktok
add address=147.50.207.48 list=tiktok
add address=104.116.243.153 list=tiktok
add address=92.122.166.165 list=tiktok
add address=92.122.166.215 list=tiktok
add address=23.72.90.78 list=tiktok
add address=23.72.90.86 list=tiktok
add address=104.116.243.81 list=tiktok
add address=104.116.243.154 list=tiktok
add address=92.122.166.171 list=tiktok
add address=92.122.166.166 list=tiktok
add address=104.114.77.80 list=tiktok
add address=23.221.50.17 list=tiktok
add address=23.221.50.41 list=tiktok
add address=173.222.108.145 list=tiktok
add address=96.17.96.30 list=tiktok
add address=92.122.218.152 list=tiktok
add address=173.222.108.208 list=tiktok
add address=92.122.218.169 list=tiktok
add address=95.100.146.48 list=tiktok
add address=2.21.109.35 list=tiktok
add address=173.222.108.171 list=tiktok
add address=92.122.166.175 list=tiktok
add address=23.193.186.34 list=tiktok
add address=23.39.173.243 list=tiktok
add address=36.89.220.40 list=tiktok
add address=95.101.34.91 list=tiktok
add address=23.48.173.58 list=tiktok
add address=36.89.220.41 list=tiktok
add address=23.39.173.195 list=tiktok
add address=23.50.117.137 list=tiktok
add address=23.62.212.200 list=tiktok
add address=23.39.173.192 list=tiktok
add address=96.17.96.25 list=tiktok
add address=156.59.248.74 list=tiktok
add address=23.39.173.217 list=tiktok
add address=2.21.109.19 list=tiktok
add address=207.211.209.216 list=tiktok
add address=2.21.109.40 list=tiktok
add address=2.20.71.83 list=tiktok
add address=2.20.71.71 list=tiktok
add address=2.20.71.81 list=tiktok
add address=2.21.109.18 list=tiktok
add address=92.122.166.178 list=tiktok
add address=2.20.71.82 list=tiktok
add address=2.20.71.76 list=tiktok
add address=23.45.12.169 list=tiktok
add address=104.114.77.65 list=tiktok
add address=184.87.193.145 list=tiktok
add address=104.114.77.59 list=tiktok
add address=23.39.173.34 list=tiktok
add address=23.45.12.178 list=tiktok
add address=3.125.143.160 list=tiktok
add address=23.50.117.73 list=tiktok
add address=118.98.95.121 list=tiktok
add address=23.213.43.203 list=tiktok
add address=23.221.50.235 list=tiktok
add address=23.221.50.218 list=tiktok
add address=23.213.43.204 list=tiktok
add address=23.213.43.207 list=tiktok
add address=45.121.219.176 list=tiktok
add address=23.48.173.147 list=tiktok
add address=23.48.173.136 list=tiktok
add address=156.236.20.131 list=tiktok
add address=23.48.173.115 list=tiktok
add address=23.215.7.11 list=tiktok
add address=118.98.42.56 list=tiktok
add address=23.48.173.114 list=tiktok
add address=23.48.173.96 list=tiktok
add address=23.48.173.128 list=tiktok
add address=72.247.127.251 list=tiktok
add address=45.121.219.171 list=tiktok
add address=45.121.219.154 list=tiktok
add address=114.10.2.211 list=tiktok
add address=23.219.184.160 list=tiktok
add address=112.215.103.230 list=tiktok
add address=23.64.122.32 list=tiktok
add address=114.10.2.249 list=tiktok
add address=23.52.40.152 list=tiktok
add address=114.10.2.163 list=tiktok
add address=23.216.158.19 list=tiktok
add address=96.17.72.58 list=tiktok
add address=23.48.173.113 list=tiktok
add address=23.48.173.74 list=tiktok
add address=23.48.173.121 list=tiktok
add address=36.89.220.9 list=tiktok
add address=23.52.40.161 list=tiktok
add address=23.216.158.81 list=tiktok
add address=23.216.158.43 list=tiktok
add address=23.216.158.26 list=tiktok
add address=45.121.219.136 list=tiktok
add address=35.157.240.29 list=tiktok
add address=23.48.173.232 list=tiktok
add address=23.216.158.34 list=tiktok
add address=23.216.158.56 list=tiktok
add address=23.216.158.72 list=tiktok
add address=23.52.171.82 list=tiktok
add address=23.52.171.75 list=tiktok
add address=23.52.171.88 list=tiktok
add address=23.205.70.107 list=tiktok
add address=23.48.173.120 list=tiktok
add address=23.48.173.169 list=tiktok
add address=36.89.220.16 list=tiktok
add address=23.216.158.147 list=tiktok
add address=23.40.40.80 list=tiktok
add address=45.121.219.152 list=tiktok
add address=23.211.140.152 list=tiktok
add address=23.52.171.208 list=tiktok
add address=23.52.171.217 list=tiktok
add address=23.59.168.168 list=tiktok
add address=23.52.171.59 list=tiktok
add address=23.216.158.75 list=tiktok
add address=114.5.7.162 list=tiktok
add address=114.5.7.144 list=tiktok
add address=23.215.35.138 list=tiktok
add address=23.215.35.153 list=tiktok
add address=138.199.14.16 list=tiktok
add address=207.211.208.177 list=tiktok
add address=207.211.208.174 list=tiktok
add address=129.227.40.225 list=tiktok
add address=23.43.248.147 list=tiktok
add address=79.127.213.227 list=tiktok
add address=23.48.173.138 list=tiktok
add address=23.50.117.115 list=tiktok
add address=138.199.14.18 list=tiktok
add address=45.121.219.146 list=tiktok
add address=23.192.150.4 list=tiktok
add address=23.221.50.130 list=tiktok
add address=23.192.150.25 list=tiktok
add address=23.39.173.249 list=tiktok
add address=156.245.4.36 list=tiktok
add address=23.215.35.100 list=tiktok
add address=207.211.208.171 list=tiktok
add address=207.211.208.184 list=tiktok
add address=211.152.129.57 list=tiktok
add address=103.136.220.84 list=tiktok
add address=23.219.204.169 list=tiktok
add address=23.210.250.123 list=tiktok
add address=23.210.250.186 list=tiktok
add address=23.210.250.187 list=tiktok
add address=23.210.250.130 list=tiktok
add address=23.210.250.184 list=tiktok
add address=23.210.250.154 list=tiktok
add address=149.104.85.129 list=tiktok
add address=143.244.32.98 list=tiktok
add address=184.27.123.218 list=tiktok
add address=23.210.250.120 list=tiktok
add address=184.27.123.136 list=tiktok
add address=184.27.123.144 list=tiktok
add address=184.27.123.152 list=tiktok
add address=23.210.250.128 list=tiktok
add address=23.210.250.129 list=tiktok
add address=118.98.95.115 list=tiktok
add address=23.192.150.28 list=tiktok
add address=23.210.250.136 list=tiktok
add address=23.210.250.146 list=tiktok
add address=23.210.250.155 list=tiktok
add address=23.59.80.40 list=tiktok
add address=23.59.80.34 list=tiktok
add address=23.192.150.14 list=tiktok
add address=184.28.235.163 list=tiktok
add address=23.210.250.147 list=tiktok
add address=23.59.80.27 list=tiktok
add address=23.59.80.90 list=tiktok
add address=23.59.80.51 list=tiktok
add address=23.39.173.19 list=tiktok
add address=116.206.37.16 list=tiktok
add address=23.39.173.41 list=tiktok
add address=23.39.173.27 list=tiktok
add address=148.153.241.24 list=tiktok
add address=23.39.173.24 list=tiktok
add address=23.39.173.32 list=tiktok
add address=23.39.173.8 list=tiktok
add address=23.72.90.22 list=tiktok
add address=23.72.90.21 list=tiktok
add address=23.39.173.9 list=tiktok
add address=23.39.173.10 list=tiktok
add address=23.39.173.65 list=tiktok
add address=156.59.76.173 list=tiktok
add address=23.223.47.50 list=tiktok
add address=104.116.243.24 list=tiktok
add address=104.116.243.74 list=tiktok
add address=104.116.243.186 list=tiktok
add address=118.98.113.234 list=tiktok
add address=104.116.243.82 list=tiktok
add address=104.116.243.184 list=tiktok
add address=104.116.243.155 list=tiktok
add address=23.221.50.99 list=tiktok
add address=95.101.111.180 list=tiktok
add address=35.204.157.56 list=tiktok
add address=23.45.232.24 list=tiktok
add address=23.210.250.122 list=tiktok
add address=23.210.250.179 list=tiktok
add address=184.27.123.201 list=tiktok
add address=184.27.123.193 list=tiktok
add address=184.27.123.192 list=tiktok
add address=184.27.123.194 list=tiktok
add address=23.210.250.177 list=tiktok
add address=23.210.250.162 list=tiktok
add address=23.210.250.137 list=tiktok
add address=23.210.250.171 list=tiktok
add address=23.59.80.66 list=tiktok
add address=23.192.150.18 list=tiktok
/ip firewall mangle
add action=mark-routing chain=prerouting comment=VPN dst-address-list=\
    speedtest new-routing-mark=B passthrough=no src-address-list=\
    private-local
add action=accept chain=prerouting dst-address-list=private-local \
    src-address-list=private-local
add action=mark-connection chain=prerouting new-connection-mark=icmp \
    passthrough=yes protocol=icmp
add action=mark-packet chain=forward connection-mark=icmp new-packet-mark=\
    icmp passthrough=no protocol=icmp
add action=mark-connection chain=input comment="Loadbalance PCC" \
    in-interface=ether1 new-connection-mark=cm-ether1 passthrough=yes
add action=mark-connection chain=input in-interface=ether2 \
    new-connection-mark=cm-ether2 passthrough=yes
add action=mark-routing chain=output connection-mark=cm-ether1 \
    new-routing-mark=A passthrough=no
add action=mark-routing chain=output connection-mark=cm-ether2 \
    new-routing-mark=B passthrough=no
add action=mark-connection chain=prerouting dst-address-list=!private-local \
    dst-address-type=!local new-connection-mark=cm-ether1 passthrough=yes \
    per-connection-classifier=dst-address-and-port:2/0 src-address-list=\
    private-local
add action=mark-connection chain=prerouting dst-address-list=!private-local \
    dst-address-type=!local new-connection-mark=cm-ether2 passthrough=yes \
    per-connection-classifier=dst-address-and-port:2/1 src-address-list=\
    private-local
add action=mark-routing chain=prerouting connection-mark=cm-ether1 \
    dst-address-list=!private-local new-routing-mark=A passthrough=no \
    src-address-list=private-local
add action=mark-routing chain=prerouting connection-mark=cm-ether2 \
    dst-address-list=!private-local new-routing-mark=B passthrough=no \
    src-address-list=private-local
add action=mark-routing chain=prerouting comment=PBR disabled=yes \
    dst-address-list=youtube.com new-routing-mark=B passthrough=no \
    src-address-list=private-local
add action=mark-routing chain=prerouting disabled=yes dst-address-list=\
    facebook new-routing-mark=B passthrough=no src-address-list=private-local
add action=mark-routing chain=prerouting disabled=yes dst-address-list=tiktok \
    new-routing-mark=B passthrough=no src-address-list=private-local
/ip firewall nat
add action=masquerade chain=srcnat out-interface=vlan2704
add action=masquerade chain=srcnat out-interface=ether1
/ip firewall raw
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting comment=ML disabled=yes \
    dst-address-list=!Client+ISP dst-port=\
    5000-5221,5224-5227,5229-5241,5243-5508,5551-5559,5601-5700,9001,9443 \
    protocol=tcp src-address-list=Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting disabled=yes dst-address-list=\
    !Client+ISP dst-port=5520-5529,10003,30000-30300 protocol=tcp \
    src-address-list=Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting disabled=yes dst-address-list=\
    !Client+ISP dst-port=\
    4001-4009,5000-5221,5224-5241,5243-5508,5551-5559,5601-5700 protocol=udp \
    src-address-list=Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting disabled=yes dst-address-list=\
    !Client+ISP dst-port=\
    2702,3702,5517,5520-5529,8001,9000-9010,9992,10003,30000-30300 protocol=\
    udp src-address-list=Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting comment=FF disabled=yes \
    dst-address-list=!Client+ISP dst-port="6006,6674,7006,7889,8001-8012,9006,\
    10000-10012,11000-11019,12006,12008,13006" protocol=tcp src-address-list=\
    Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting disabled=yes dst-address-list=\
    !Client+ISP dst-port=20561,39003,39006,39698,39779,39800 protocol=tcp \
    src-address-list=Client+ISP
add action=add-dst-to-address-list address-list=Game-List \
    address-list-timeout=4h chain=prerouting disabled=yes dst-address-list=\
    !Client+ISP dst-port=\
    6006,6008,7008,8008,9008,10000-10013,10100,11000-11019,12008,13008 \
    protocol=udp src-address-list=Client+ISP
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=windowsupdate.microsoft.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=download.microsoft.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=test.stats.update.microsoft.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=ntservicepack.microsoft.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=*.download.windowsupdate.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=*.update.microsoft.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=download.windowsupdate.com
add action=drop chain=prerouting comment="Blok Windows Update" disabled=yes \
    protocol=tcp tls-host=*.windowsupdate.microsoft.com
add action=add-dst-to-address-list address-list=youtube.com \
    address-list-timeout=1d chain=prerouting comment=YOUTUBE.COM content=\
    googlevideo.com dst-address-list=!private-local
add action=add-dst-to-address-list address-list=youtube.com \
    address-list-timeout=1d chain=prerouting comment=YOUTUBE.COM content=\
    youtubei.googleapis.com dst-address-list=!private-local
add action=add-dst-to-address-list address-list=youtube.com \
    address-list-timeout=1d chain=prerouting comment=YOUTUBE.COM content=\
    .googlevideo.com dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=INSTAGRAM content=.cdninstagram.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=INSTAGRAM content=\
    scontent-sin6-2.cdninstagram.com dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=INSTAGRAM content=.instagram.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=WHATSAPP content=.whatsapp.net \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=WHATSAPP content=.whatsapp.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=fb content=.facebook.com dst-address-list=\
    !private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=fb content=.facebook.net dst-address-list=\
    !private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=fb content=.fbcdn.net dst-address-list=\
    !private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=twitter content=.twitter.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=twitter content=twitter.com dst-address-list=\
    !private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=twitter content=.twimg.com dst-address-list=\
    !private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=.telegram.org content=.telegram.org \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=sosmed address-list-timeout=\
    1d chain=prerouting comment=.telegram.org content=telegram.org \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    none-static chain=prerouting comment=tiktokcdn.com content=tiktokcdn.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    none-static chain=prerouting comment=tiktokcdn.com content=.tiktokv.com \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    none-static chain=prerouting comment=tiktokcdn.com content=.snackvideo.in \
    dst-address-list=!private-local
add action=add-dst-to-address-list address-list=tiktok address-list-timeout=\
    none-static chain=prerouting comment=tiktokcdn.com content=\
    .snackvideo.com dst-address-list=!private-local
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=DOTA2 disabled=yes dst-address-list=\
    !private-local dst-port=27000-28998 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=PALADINS disabled=yes dst-address-list=\
    !private-local dst-port=9000-9999 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=WARFRAME disabled=yes dst-address-list=\
    !private-local dst-port=6695-6699 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="POINT BLANK - Zepetto" disabled=yes \
    dst-address-list=!private-local dst-port=39190-39200,49001-49190 \
    protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="FIFA ONLINE" disabled=yes dst-address-list=\
    !private-local dst-port=7770-7790 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=LOL disabled=yes dst-address-list=!private-local \
    dst-port=2080-2099 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=HON disabled=yes dst-address-list=!private-local \
    dst-port=11031 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=DRAGONNEST disabled=yes dst-address-list=\
    !private-local dst-port=14300-14440 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LOST SAGA" disabled=yes dst-address-list=\
    !private-local dst-port=14000-14050 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="BLACK SQUAD" disabled=yes dst-address-list=\
    !private-local dst-port=61000,62000 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ECHO OF SOUL (EOS)" disabled=yes \
    dst-address-list=!private-local dst-port=7800 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=CROSSFIRE disabled=yes dst-address-list=\
    !private-local dst-port=10009 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="IDOL STREET" disabled=yes dst-address-list=\
    !private-local dst-port=2001-2010 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="RF ONLINE" disabled=yes dst-address-list=\
    !private-local dst-port=27780 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ROHAN ONLINE" disabled=yes dst-address-list=\
    !private-local dst-port=22100 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="PERFECT WORLD" disabled=yes dst-address-list=\
    !private-local dst-port=29000 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=AYODANCE disabled=yes dst-address-list=\
    !private-local dst-port=18900-18910 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="COUNTER-STRIKE ONLINE" disabled=yes \
    dst-address-list=!private-local dst-port=36567,8001 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=AYOOKE disabled=yes dst-address-list=\
    !private-local dst-port=28001-28010 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="SPECIAL FORCE" disabled=yes dst-address-list=\
    !private-local dst-port=27920-27940 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=X-SHOT disabled=yes dst-address-list=\
    !private-local dst-port=7320-7350 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="MERCENARY OPS" disabled=yes dst-address-list=\
    !private-local dst-port=6000-6125 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="PERFECT WORLD" disabled=yes dst-address-list=\
    !private-local dst-port=29000 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LINE GET RICH" disabled=yes dst-address-list=\
    !private-local dst-port=10500-10515 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="COC (CLASH OF CLANS)" disabled=yes \
    dst-address-list=!private-local dst-port=9330-9340 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="DOMINO QQ" disabled=yes dst-address-list=\
    !private-local dst-port=9122,11000-11150 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="SEVEN KNIGHTS (NETMARBLE)" disabled=yes \
    dst-address-list=!private-local dst-port=12000-12010 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="CLASH ROYALE (CRY)" disabled=yes \
    dst-address-list=!private-local dst-port=9330-9340 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LAST EMPIRE WAR Z" disabled=yes \
    dst-address-list=!private-local dst-port=9930-9940 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=MOSTLY disabled=yes dst-address-list=\
    !private-local dst-port=9933 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="SHINOBI HEROES" disabled=yes dst-address-list=\
    !private-local dst-port=10005-10020 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="NARUTO LITTLE NINJA (CHINA)" disabled=yes \
    dst-address-list=!private-local dst-port=6170-6180 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="POINT BLANK MOBILE / PB MOBILE" disabled=yes \
    dst-address-list=!private-local dst-port=44590-44610 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="MOBILE LEGENDS: BANG BANG (ML)" disabled=yes \
    dst-address-list=!private-local dst-port=\
    5000-5508,5551-5558,5601-5608,5651-5658,30097-30147 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ARENA OF VALOR (AOV)  GARENA" disabled=yes \
    dst-address-list=!private-local dst-port=10001-10094 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ARENA OF VALOR (AOV)  GARENA" disabled=yes \
    dst-address-list=!private-local dst-port=\
    10101-10201,10080-10110,17000-18000 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="DANCE UP INDO" disabled=yes dst-address-list=\
    !private-local dst-port=10000-10010 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="BOOYA CAPSA SUSUN" disabled=yes \
    dst-address-list=!private-local dst-port=7090-7100 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="BOOYA DOMINO QIUQIU" disabled=yes \
    dst-address-list=!private-local dst-port=7020-7030 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="Free fire garena" disabled=yes \
    dst-address-list=!private-local dst-port=39698,39003,39779 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=DOTA2 disabled=yes dst-address-list=\
    !private-local dst-port=27000-28998 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=PUBG disabled=yes dst-address-list=\
    !private-local dst-port=7086-7995,12070-12460,41182-41192 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=PUBG disabled=yes dst-address-list=\
    !private-local dst-port=10012,17500 protocol=tcp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=PALADINS disabled=yes dst-address-list=\
    !private-local dst-port=9000-9999 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=BLACKRETRIBUTION disabled=yes dst-address-list=\
    !private-local dst-port=7020-7050,8200-8220,9000-9020 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LEFT4DEAD 2" disabled=yes dst-address-list=\
    !private-local dst-port=4360-4390 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=WARFRAME disabled=yes dst-address-list=\
    !private-local dst-port=4950-4955 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LAST MAN TANDING" disabled=yes \
    dst-address-list=!private-local dst-port=34000-34025,3500 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="POINT BLANK - Zepetto" disabled=yes \
    dst-address-list=!private-local dst-port=40000-40010 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="FIFA ONLINE" disabled=yes dst-address-list=\
    !private-local dst-port=16300-16350 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=LOL disabled=yes dst-address-list=!private-local \
    dst-port=5100 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=HON disabled=yes dst-address-list=!private-local \
    dst-port=11100-11125,11440-11460 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=DRAGONNEST disabled=yes dst-address-list=\
    !private-local dst-port=15000-15500 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="LOST SAGA" disabled=yes dst-address-list=\
    !private-local dst-port=14000-14050 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="BLACK SQUAD" disabled=yes dst-address-list=\
    !private-local dst-port=50000-50100 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ECHO OF SOUL (EOS)" disabled=yes \
    dst-address-list=!private-local dst-port=5355 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=CROSSFIRE disabled=yes dst-address-list=\
    !private-local dst-port=12060-12070 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="COUNTER-STRIKE ONLINE" disabled=yes \
    dst-address-list=!private-local dst-port=8001 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=AYOOKE disabled=yes dst-address-list=\
    !private-local dst-port=26001-26010 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="SPECIAL FORCE" disabled=yes dst-address-list=\
    !private-local dst-port=30000-30030 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=X-SHOT disabled=yes dst-address-list=\
    !private-local dst-port=7800-7850,30000 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=ROBLOX disabled=yes dst-address-list=\
    !private-local dst-port=56849-57729,60275-64632 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="RULES OF SURVIVAL" disabled=yes \
    dst-address-list=!private-local dst-port=24000-24050 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="CLASH ROYALE (CRY)" disabled=yes \
    dst-address-list=!private-local dst-port=9330-9340 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="DREAM LEAGUE SOCCER" disabled=yes \
    dst-address-list=!private-local dst-port=60970-60980 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="RPG TORAM ONLINE" disabled=yes \
    dst-address-list=!private-local dst-port=30100-30110 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="ARENA OF VALOR (AOV)  GARENA" disabled=yes \
    dst-address-list=!private-local dst-port=10080,17000 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment="Free fire garena" disabled=yes \
    dst-address-list=!private-local dst-port=10000-10007,7008 protocol=udp
add action=add-dst-to-address-list address-list=games address-list-timeout=1d \
    chain=prerouting comment=PUBG disabled=yes dst-address-list=\
    !private-local dst-port="10491,10010,10013,10612,20002,20001,20000,12235,1\
    3748,13972,13894,11455,10096,10039" protocol=udp
/ip route
add check-gateway=ping distance=1 gateway=192.168.121.1 routing-mark=A
add check-gateway=ping distance=1 gateway=10.13.11.1 routing-mark=B
add check-gateway=ping distance=1 gateway=8.8.8.8 target-scope=30
add check-gateway=ping distance=2 gateway=8.8.4.4 target-scope=50
add distance=5 gateway=185.185.113.1
add check-gateway=ping disabled=yes distance=1 gateway=192.168.121.1
add check-gateway=ping disabled=yes distance=2 gateway=10.13.11.1
add check-gateway=ping distance=1 dst-address=8.8.4.4/32 gateway=10.13.11.1 \
    scope=50
add check-gateway=ping distance=1 dst-address=8.8.8.8/32 gateway=\
    192.168.121.1
/ppp secret
add local-address=10.13.14.1 name=MAMAS password=MAMAS profile=2M \
    remote-address=10.13.14.2
add local-address=10.13.14.1 name=PEDET password=PEDET profile=2M \
    remote-address=10.13.14.3
add local-address=10.13.14.1 name=AYU password=MAMAS profile=2M \
    remote-address=10.13.14.4
add local-address=10.13.14.1 name=BALDES password=MAMAS profile=2M \
    remote-address=10.13.14.5
add local-address=10.13.14.1 name=JEJEP password=JEJEP profile=2M \
    remote-address=10.13.14.7
add local-address=10.13.14.1 name=RIAS password=MAMAS profile=2M \
    remote-address=10.13.14.8
add local-address=10.13.14.1 name=ANIS password=MAMAS profile=2M \
    remote-address=10.13.14.9
add local-address=10.13.14.1 name=KASTOLANI password=PEDET profile=2M \
    remote-address=10.13.14.10
add local-address=10.13.14.1 name=DEWA password=DEWA profile=2M \
    remote-address=10.13.14.11
add local-address=10.13.14.1 name=ASIT password=ASIT profile=2M \
    remote-address=10.13.14.12
add local-address=10.13.14.1 name=PEPEN password=PEDET profile=2M \
    remote-address=10.13.14.13
add local-address=10.13.14.1 name=UUS password=UUS profile=2M remote-address=\
    10.13.14.14
add local-address=10.13.14.1 name=RASIKA password=MAMAS profile=2M \
    remote-address=10.13.14.15
add local-address=10.13.14.1 name=KARNALI password=PEDET profile=2M \
    remote-address=10.13.14.16
add local-address=10.13.14.1 name=JOHAN password=PEDET profile=2M \
    remote-address=10.13.14.17
add local-address=10.13.14.1 name=ENI password=MAMAS profile=2M \
    remote-address=10.13.14.18
add local-address=10.13.14.1 name=DEA password=MAMAS profile=2M \
    remote-address=10.13.14.20
add local-address=10.13.14.1 name=NENTI password=MAMAS profile=2M \
    remote-address=10.13.14.6
add local-address=10.13.14.1 name=NANO password=MAMAS profile=2M \
    remote-address=10.13.14.19
add local-address=10.13.14.1 name=BIBI password=MAMAS profile=2M \
    remote-address=10.13.14.21
/routing ospf network
add area=backbone network=10.253.9.0/24
add area=backbone network=10.13.11.0/30
add area=backbone network=192.168.121.0/24
add area=backbone network=10.13.14.0/24
/system clock
set time-zone-name=Asia/Jakarta
/system identity
set name=RO-DIST-CANGKINGAN
