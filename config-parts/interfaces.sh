# #!/bin/vbash

set interfaces ethernet eth0 address '10.1.0.1/24'
set interfaces ethernet eth0 address '192.168.0.1/23' # legacy, for migration purpose
set interfaces ethernet eth0 hw-id "00:e2:69:59:25:68"
set interfaces ethernet eth0 description 'LAN'
set interfaces ethernet eth0 vif 10 address '10.1.1.1/24'
set interfaces ethernet eth0 vif 10 description 'SERVERS'
set interfaces ethernet eth0 vif 20 address '10.1.2.1/24'
set interfaces ethernet eth0 vif 20 description 'TRUSTED'
set interfaces ethernet eth0 vif 30 address '192.168.3.1/24'
set interfaces ethernet eth0 vif 30 description 'GUEST'
set interfaces ethernet eth0 vif 40 address '10.1.4.1/24'
set interfaces ethernet eth0 vif 40 description 'IOT'

set interfaces ethernet eth1 description 'WAN - Fiber'
set interfaces ethernet eth1 hw-id '00:e2:69:59:25:69'
set interfaces ethernet eth1 mtu '1508'
set interfaces ethernet eth1 vif 6 description 'Internet'
set interfaces ethernet eth1 vif 6 mtu '1508'

set interfaces pppoe pppoe0 description 'WAN - Fiber'
set interfaces pppoe pppoe0 source-interface 'eth1.6'
set interfaces pppoe pppoe0 mtu '1500'
set interfaces pppoe pppoe0 authentication user "${SECRET_ISP_AUTH_USER}"
set interfaces pppoe pppoe0 authentication password "${SECRET_ISP_AUTH_PASSWORD}"

# set interfaces wireguard wg01 address '10.0.11.1/24'
# set interfaces wireguard wg01 description 'WIREGUARD'
# set interfaces wireguard wg01 peer oneplus-8t allowed-ips '10.0.11.4/32'
# set interfaces wireguard wg01 peer oneplus-8t persistent-keepalive '15'
# set interfaces wireguard wg01 peer oneplus-8t public-key '8WyIUVFoOCP14rAK/s7aUareIH2O/5kIgu/lvWPbZnA='
# set interfaces wireguard wg01 port '51820'
# set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
