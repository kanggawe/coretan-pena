#/system backup save name="terakhir"
/interface l2tp-client remove [find comment=VPNDNS]
/interface l2tp-client add name=VPNDNS connect=43.245.186.128 user=ljn pass=p2wi disable=no comm=VPNDNS add-default-route=no

/ip fir nat remove [find comment=VPNDNS]
/ip fir nat add chain=srcnat out-interface=VPNDNS action=masquerade comm=VPNDNS


/ip route remove [find comment=VPNDNS]
/ip route add gateway=VPNDNS comm=VPNDNS routing-mark=VPNDNS 
/ip route rule remove [find comment=VPNDNS]
/ip route rule add comment=VPNDNS disabled=no dst-address=8.8.8.8 table=VPNDNS
/ip route rule add comment=VPNDNS disabled=no dst-address=8.8.4.4 table=VPNDNS
/ip dns set server=8.8.8.8,8.8.4.4 allow-remot=yes


/ip fir mang remove [find comment=CAT]
/ip fir mang add chain=input comment=CAT action=mark-connection new-connection-mark=ISP in-interface=ISP passthrough=no
/ip fir mang add chain=output comment=CAT action=mark-routing new-routing-mark=CAT connection-mark=ISP passthrough=no

#:if ([:len [/file find name=nice.rsc]] > 0) do={/file remove nice.rsc }; /tool fetch address=ixp.mikrotik.co.id src-path=/download/nice.rsc mode=http;/import nice.rsc
/ip firewall address-list remove [/ip firewall address-list find list=nice]
/tool fetch url=http://ixp.mikrotik.co.id/download/nice.rsc mode=http ;/import nice.rsc

#Kimcil
/ip fir mang remove [find comment=kimcil]
/ip fir mang add com=kimcil chain=prerouting action=mark-connection new-connection-mark=kimcil src-address-list=localan passthrough=yes dst-address-list=kimcil 
/ip fir mang add com=kimcil chain=prerouting action=mark-routing new-routing-mark=CT src-address-list=localan passthrough=no connection-mark=kimcil
/ip fir mang remove [find comment=nice]
/ip fir mang add com=niec chain=prerouting action=mark-connection new-connection-mark=nice src-address-list=localan passthrough=yes dst-address-list=nice 
/ip fir mang add com=nice chain=prerouting action=mark-routing new-routing-mark=CT src-address-list=localan passthrough=no connection-mark=nice


#Default ISP Baclbone
/interface l2tp-client set [find name=ISP] add-default=yes disable=no


/ip route rule remove [find comment=local]
/ip route rule add comment=local disabled=no dst-address=192.0.0.0/8  table=main
/ip route rule add comment=local disabled=no dst-address=10.0.0.0/8  table=main
#/ip route rule add comment=local disabled=no dst-address=.172.0.0/8  table=main


/ip route rule remove [find comment=CT]
#Game
/ip route rule add comment=CT disabled=no dst-address=43.252.184.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=49.50.4.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=49.50.6.0/23  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.18.34.0/23  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.194.130.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.229.160.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.248.56.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=122.102.48.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=122.102.52.0/23  table=CT
/ip route rule add comment=CT disabled=no dst-address=122.102.54.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.16.0/21  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.93.16.0/21  table=CT
/ip route rule add comment=CT disabled=no dst-address=203.89.146.0/23  table=CT
/ip route rule add comment=CT disabled=no dst-address=45.121.184.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.28.54.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=122.11.128.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.10.124.0/22  table=CT
/ip route rule add comment=CT disabled=no dst-address=153.254.0.0/15  table=CT
/ip route rule add comment=CT disabled=no dst-address=122.11.128.0/18  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.28.54.0/23  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.248.59.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.248.57.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=43.252.187.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.22.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=43.252.185.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=43.252.186.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.248.56.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=103.248.58.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.16.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.17.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.18.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.19.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.20.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.21.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=202.73.23.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=155.133.253.0/24  table=CT
/ip route rule add comment=CT disabled=no dst-address=155.133.239.0/24  table=CT

#CAT
/ip route remove [find comment=CAT]
/ip route add comment=CAT dst-addr=0.0.0.0/0 gateway=ISP routing-mark=CAT 

/ip route rule remove [find comment=CAT]
/ip route rule add comment=CAT disabled=no dst-address=172.217.27.40  table=CAT
/ip route rule add comment=CAT disabled=no dst-address=110.232.178.82 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=10.232.178.82/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=23.10.27.92/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=23.15.97.21/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=23.67.2.177/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=23.239.16.110/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=23.239.26.248/32 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=43.252.184.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=43.252.186.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=43.252.187.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=45.64.255.130/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=49.50.4.0/22 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=52.15.128.23/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=52.15.128.27/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=52.15.128.29/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.6.64.6/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.6.65.6/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.25.37.228/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.25.37.253/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.251.20.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.251.20.32/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=64.251.20.36/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=67.210.208.128/25 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=69.60.102.152/29 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=72.8.190.27/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=72.20.39.176/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=72.21.92.82/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=72.52.94.234/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=85.17.208.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=88.198.0.0/16 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=94.236.48.32/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=95.85.16.212/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.11.133.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.18.34.0/23 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.229.160.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.229.161.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.229.162.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.229.163.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.229.164.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=103.247.244.0/23 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.248.56.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.248.57.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.248.58.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=103.248.59.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=104.27.192.92/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=104.27.193.92/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=108.177.125.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=109.234.75.0/25 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=109.234.76.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=111.223.43.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=112.121.148.0/25 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=112.121.158.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=117.18.232.133/32 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=122.11.128.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=122.102.40.0/21 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=124.108.151.128/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=125.5.24.0/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=151.101.0.0/16 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=151.101.0.0/22 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=151.101.64.0/22 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=151.101.128.0/22 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=151.101.192.0/22 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=154.45.216.64/26 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=172.31.40.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=172.31.254.0/30 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=174.35.122.0/26 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=178.254.27.192/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=184.29.92.34/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=185.54.244.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=198.49.88.0/25 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=199.16.233.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.16.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.17.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.18.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.19.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.20.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.21.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.22.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=202.73.23.0/24 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=203.89.146.0/23 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.116.49.0/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.116.173.31/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.117.124.64/27 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.117.135.0/26 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.117.155.132/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.117.158.200/30 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.173.91.58/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=203.208.200.96/28 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=208.64.38.55/32 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=208.85.108.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=216.176.194.0/24 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=175.103.59.91 table=CAT
/ip route rule add comment=CAT disabled=no dst-address=104.16.0.0/16 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=8.8.8.8 table=CAT
#/ip route rule add comment=CAT disabled=no dst-address=8.8.4.4 table=CAT
/ip dns set server=8.8.8.8,8.8.4.4 allow-remot=yes

#Google Youtube FB
/ip route rule add comment=CT disabled=no dst-address=31.13.24.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=31.13.64.0/18 table=CT
/ip route rule add comment=CT disabled=no dst-address=45.64.40.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=66.220.144.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=69.63.176.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=69.171.224.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=74.119.76.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=103.4.96.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=129.134.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=157.240.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=173.252.64.0/18 table=CT
/ip route rule add comment=CT disabled=no dst-address=179.60.192.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=185.60.216.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=204.15.20.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=1.0.0.0/24 table=CT
/ip route rule add comment=CT disabled=no dst-address=1.1.1.0/24 table=CT
/ip route rule add comment=CT disabled=no dst-address=1.2.3.0/24 table=CT
#/ip route rule add comment=CT disabled=no dst-address=8.8.4.0/24 table=CT
#/ip route rule add comment=CT disabled=no dst-address=8.8.8.0/24 table=CT
/ip route rule add comment=CT disabled=no dst-address=8.15.202.0/24 table=CT
/ip route rule add comment=CT disabled=no dst-address=8.34.208.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=8.35.192.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=23.236.48.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=23.251.128.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=35.184.0.0/13 table=CT
/ip route rule add comment=CT disabled=no dst-address=35.192.0.0/12 table=CT
/ip route rule add comment=CT disabled=no dst-address=45.121.228.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=64.15.112.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=64.233.160.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=66.102.0.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=66.249.64.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=70.32.128.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=72.14.192.0/18 table=CT
/ip route rule add comment=CT disabled=no dst-address=74.114.24.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=74.125.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=103.62.64.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=104.132.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=104.133.0.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=104.134.128.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=104.154.0.0/15 table=CT
/ip route rule add comment=CT disabled=no dst-address=104.196.0.0/14 table=CT
/ip route rule add comment=CT disabled=no dst-address=107.167.160.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=107.178.192.0/18 table=CT
/ip route rule add comment=CT disabled=no dst-address=108.59.80.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=108.170.192.0/18 table=CT
/ip route rule add comment=CT disabled=no dst-address=108.177.0.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=113.197.106.0/24 table=CT
/ip route rule add comment=CT disabled=no dst-address=130.211.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=142.250.0.0/15 table=CT
/ip route rule add comment=CT disabled=no dst-address=146.148.0.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=162.216.148.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=162.222.176.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=172.102.8.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=172.110.32.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=172.217.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=172.253.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=173.194.0.0/16 table=CT
/ip route rule add comment=CT disabled=no dst-address=173.255.112.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=185.25.28.0/23 table=CT
/ip route rule add comment=CT disabled=no dst-address=185.150.148.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=192.104.160.0/23 table=CT
/ip route rule add comment=CT disabled=no dst-address=192.158.28.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=192.178.0.0/15 table=CT
/ip route rule add comment=CT disabled=no dst-address=199.192.112.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=199.223.232.0/21 table=CT
/ip route rule add comment=CT disabled=no dst-address=207.223.160.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=208.65.152.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=208.68.108.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=208.81.188.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=208.117.224.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=209.85.128.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=209.107.176.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=216.58.192.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=216.73.80.0/20 table=CT
/ip route rule add comment=CT disabled=no dst-address=216.239.32.0/19 table=CT
/ip route rule add comment=CT disabled=no dst-address=216.252.220.0/22 table=CT
/ip route rule add comment=CT disabled=no dst-address=118.98.0.0/17 table=CT
/ip route rule add comment=CT disabled=no dst-address=118.98.109.0/24 table=CT

#Game
#/ip route rule add comment=CT disabled=no dst-address=43.252.184.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=49.50.4.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=49.50.6.0/23  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.18.34.0/23  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.194.130.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.229.160.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.248.56.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=122.102.48.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=122.102.52.0/23  table=CT
#/ip route rule add comment=CT disabled=no dst-address=122.102.54.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.16.0/21  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.93.16.0/21  table=CT
#/ip route rule add comment=CT disabled=no dst-address=203.89.146.0/23  table=CT
#/ip route rule add comment=CT disabled=no dst-address=45.121.184.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.28.54.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=122.11.128.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.10.124.0/22  table=CT
#/ip route rule add comment=CT disabled=no dst-address=153.254.0.0/15  table=CT
#/ip route rule add comment=CT disabled=no dst-address=122.11.128.0/18  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.28.54.0/23  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.248.59.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.248.57.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=43.252.187.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.22.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=43.252.185.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=43.252.186.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.248.56.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=103.248.58.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.16.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.17.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.18.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.19.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.20.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.21.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=202.73.23.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=155.133.253.0/24  table=CT
#/ip route rule add comment=CT disabled=no dst-address=155.133.239.0/24  table=CT

#IP Corporate
 


#Scadule
/sys sch remove [/sys sch find name=kimcil]
/sys sch add name=kimcil interval=23h start-t=startup on-event="/file remove [find name=kimcil.rsc]\r\n/tool fetch url=http://files.duniakomputer.net/kimcil.rsc mode=http ;/import kimcil.rsc"
/file remove [find name=kimcil.rsc]
/ip firewall address-list remove [find address=192.0.0.0/8]
/ip firewall address-list add add=192.0.0.0/8 list=localan
/ip firewall address-list remove [find address=10.0.0.0/8]
/ip firewall address-list add add=10.0.0.0/8 list=localan
#/ip firewall address-list remove [find address=172.0.0/8]
#/ip firewall address-list add add=172.0.0/8 list=localan
/tool fetch url=http://files.duniakomputer.net/kimcil.rsc mode=http ;/import kimcil.rsc

/ip route rule remove [find comment=Corporate]
/ip route rule remove [find comment=Rumahan]

/ip route rule add comment=Corporate disabled=no src-address=192.168.8.255  table=CAT
/ip route rule add comment=Rumahan disabled=no src-address=192.168.8.255  table=CT