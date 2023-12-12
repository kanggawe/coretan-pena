#ikev2 vpn
#=========== membuat ip pool ikev2
/ip pool add name=ipsecs ranges=10.10.200.2-10.10.200.200
#=========== 
/ip ipsec mode-config 
add name=vpn-ipsec-ikev responder=yes address-pool=ipsecs \
	address-prefix-length=32 system-dns=no 
/ip ipsec/proposal/add name=ipsec-ikev2 auth-algorithms=sha256 \
	enc-algorithms=aes-256-cbc pfs-group=none
/ip ipsec profile
add name=ipsec-ikev hash-algorithm=sha256 \
enc-algorithm=aes-256 dh-group=modp1024,modp2048 
/ip ipsec policy group
/add name=ipsec-ikev2
/ip ipsec policy
add template=yes group=ipsec-ikev2 action=encrypt \
ipsec-protocols=esp proposal=ipsec-ikev2
/ip ipsec peer 
add name=vpn-ikev2 profile=ipsec-ikev exchange-mode=ike2 passive=yes

/ip ipsec identity
add peer=vpn-ikev2 auth-method=pre-shared-key \
secret=loop1ing policy-template-group=ipsec-ikev2 \
mode-config=vpn-ipsec-ikev generate-policy=port-strict


/ip ipsec mode-config
add address-pool=ipsecs address-prefix-length=32 name=vpn-ipsec-ikev \
    system-dns=no
/ip ipsec policy group
add name=ipsec-ikev2
/ip ipsec profile
add enc-algorithm=aes-256 hash-algorithm=sha256 name=ipsec-ikev
/ip ipsec peer
add exchange-mode=ike2 name=vpn-ikev2 passive=yes profile=ipsec-ikev
/ip ipsec proposal
add auth-algorithms=sha256 enc-algorithms=aes-256-cbc name=ipsec-ikev2 \
    pfs-group=none
/ip ipsec identity
add generate-policy=port-strict mode-config=vpn-ipsec-ikev peer=vpn-ikev2 \
    policy-template-group=ipsec-ikev2
/ip ipsec policy
add group=ipsec-ikev2 proposal=ipsec-ikev2 template=yes
