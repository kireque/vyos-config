# #!/bin/vbash

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 default-router '192.168.3.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 range 0 start '192.168.3.200'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 range 0 stop '192.168.3.254'

set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 static-mapping xbox-01 ip-address '192.168.3.11'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 static-mapping xbox-01 mac-address '20:16:42:17:f5:d6'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 static-mapping xbox-02 ip-address '192.168.3.12'
set service dhcp-server shared-network-name GUEST subnet 192.168.3.0/24 static-mapping xbox-02 mac-address 'd8:e2:df:5f:6e:66'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 default-router '10.1.4.1'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 domain-name 'home.econline.nl'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 range 0 start '10.1.4.200'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 range 0 stop '10.1.4.254'

set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-slzb-05-01 ip-address '10.1.4.11'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-slzb-05-01 mac-address 'a8:48:fa:08:60:57'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-slzb-05-02 ip-address '10.1.4.12'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-slzb-05-02 mac-address '94:3c:c6:3b:c5:17'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-doorbell ip-address '10.1.4.13'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-doorbell mac-address '5c:cf:7f:3c:81:3b'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-sprinklers ip-address '10.1.4.14'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping utility-room-sprinklers mac-address 'e8:db:84:c5:1e:35'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping kitchen-nspanel ip-address '10.1.4.15'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping kitchen-nspanel mac-address 'e0:e2:e6:0c:aa:70'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-television ip-address '10.1.4.16'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-television mac-address '20:17:42:17:82:b5'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-harmonyhub ip-address '10.1.4.17'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-harmonyhub mac-address 'c8:db:26:06:9d:43'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-marantz ip-address '10.1.4.18'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-marantz mac-address '00:06:78:28:03:2f'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-roborock ip-address '10.1.4.19'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-roborock mac-address '78:11:dc:7d:e6:d9'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping kitchen-wled ip-address '10.1.4.20'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping kitchen-wled mac-address '0c:8b:95:a6:1d:ac'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping bedroom-job-nebula ip-address '10.1.4.21'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping bedroom-job-nebula mac-address 'e8:db:84:c5:1d:1d'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping bedroom-eva-nebula ip-address '10.1.4.22'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping bedroom-eva-nebula mac-address 'e8:db:84:c5:c9:03'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping master-bedroom-chromecast ip-address '10.1.4.23'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping master-bedroom-chromecast mac-address '44:09:b8:61:b4:2d'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping laundry-room-openduco ip-address '10.1.4.24'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping laundry-room-openduco mac-address 'e8:9f:6d:b6:3a:68'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping laundry-room-washer ip-address '10.1.4.25'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping laundry-room-washer mac-address '88:57:1d:d0:78:a5'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping office-velux-gateway ip-address '10.1.4.26'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping office-velux-gateway mac-address 'f0:b0:40:f6:0e:28'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-room-shelly ip-address '10.1.4.27'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-room-shelly mac-address '2c:f4:32:69:32:fd'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-speaker ip-address '10.1.4.31'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping living-speaker mac-address 'd8:8c:79:43:a5:f7'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping sunroom-speaker ip-address '10.1.4.32'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping sunroom-speaker mac-address 'd8:8c:79:39:f4:97'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping office-speaker ip-address '10.1.4.33'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping office-speaker mac-address '14:c1:4e:12:08:13'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping hallway-zigbee-adapter ip-address '10.1.4.35'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping hallway-zigbee-adapter mac-address 'd4:8a:fc:a2:09:47'

set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping ubuntu ip-address '10.1.4.30'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping ubuntu mac-address '7a:59:bb:cc:cf:cc'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping lxc-container ip-address '10.1.4.34'
set service dhcp-server shared-network-name IOT subnet 10.1.4.0/24 static-mapping lxc-container mac-address 'B2:A8:6E:73:89:48'

# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping delta ip-address '10.1.3.121'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping delta mac-address '48:21:0b:55:c4:8a'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping enigma ip-address '10.1.3.122'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping enigma mac-address '48:21:0b:55:dc:7b'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping felix ip-address '10.1.3.123'
# set service dhcp-server shared-network-name IOT subnet 10.1.3.0/24 static-mapping felix mac-address '48:21:0b:56:09:47'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 start '10.1.0.200'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 stop '10.1.0.254'

set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch01 ip-address '10.1.0.11'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch01 mac-address 'ac:8b:a9:2b:92:3a'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch02 ip-address '10.1.0.12'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping switch02 mac-address 'f4:e2:c6:51:9a:04'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap01 ip-address '10.1.0.21'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap01 mac-address '60:22:32:36:3c:4c'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap02 ip-address '10.1.0.22'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping ap02 mac-address '60:22:32:33:a3:08'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping synology ip-address '10.1.0.31'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping synology mac-address '00:11:32:5a:59:e3'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 default-router '10.1.1.1'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 domain-name 'home.econline.nl'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 start '10.1.1.200'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 range 0 stop '10.1.1.254'

set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping delta ip-address '10.1.1.31'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping delta mac-address '1c:69:7a:a4:0a:0b'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping enigma ip-address '10.1.1.32'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping enigma mac-address '1c:69:7a:67:aa:34'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping felix ip-address '10.1.1.33'
set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping felix mac-address '1c:69:7a:a3:69:26'

# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping horus ip-address '10.1.1.51'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping horus mac-address 'b8:27:eb:b2:09:b0'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping diego ip-address '10.1.1.52'
# set service dhcp-server shared-network-name SERVERS subnet 10.1.1.0/24 static-mapping diego mac-address 'dc:a6:32:93:f5:83'

# # Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 domain-name 'home.econline.nl'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 start '10.1.2.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 range 0 stop '10.1.2.254'

set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping oneplus-8t ip-address '10.1.2.32'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping oneplus-8t mac-address 'ac:5f:ea:f8:4b:c7'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping oneplus-7t ip-address '10.1.2.31'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping oneplus-7t mac-address '48:01:c5:73:c9:7f'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping surface-laptop ip-address '10.1.2.21'
set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping surface-laptop mac-address 'c8:34:8e:65:ce:d5'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad ip-address '10.1.2.35'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping eva-ipad mac-address 'aa:ab:96:ce:f8:03'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad ip-address '10.1.2.34'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-ipad mac-address '94:bf:2d:f0:3f:c3'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone ip-address '10.1.2.33'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-iphone mac-address '8c:98:6b:a9:18:cb'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook ip-address '10.1.2.22'
# set service dhcp-server shared-network-name TRUSTED subnet 10.1.2.0/24 static-mapping manyie-macbook mac-address '8c:85:90:18:42:38'

# # Video VLAN
# set service dhcp-server shared-network-name VIDEO authoritative
# set service dhcp-server shared-network-name VIDEO ping-check
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 default-router '10.1.4.1'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 domain-name 'bjw-s.casa'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 lease '86400'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 name-server '10.5.0.4'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 start '10.1.4.200'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 range 0 stop '10.1.4.254'

# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera-doorbell ip-address '10.1.4.12'
# set service dhcp-server shared-network-name VIDEO subnet 10.1.4.0/24 static-mapping driveway-camera-doorbell mac-address 'ec:71:db:88:50:f8'
