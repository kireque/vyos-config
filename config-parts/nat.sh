# #!/bin/vbash

# Forward HTTP(S) to ingress
set nat destination rule 100 description 'HTTPS'
set nat destination rule 100 destination port '443'
set nat destination rule 100 inbound-interface 'pppoe0'
set nat destination rule 100 protocol 'tcp'
set nat destination rule 100 translation address '10.1.4.30'
set nat destination rule 100 translation port '443'

set nat destination rule 101 description 'HTTP'
set nat destination rule 101 destination port '80'
set nat destination rule 101 inbound-interface 'pppoe0'
set nat destination rule 101 protocol 'tcp'
set nat destination rule 101 translation address '10.1.4.30'
set nat destination rule 101 translation port '80'

# Force DNS
set nat destination rule 102 description 'Force DNS for IoT'
set nat destination rule 102 destination address '!10.5.0.4'
set nat destination rule 102 destination port '53'
set nat destination rule 102 inbound-interface 'eth0.40'
set nat destination rule 102 protocol 'tcp_udp'
set nat destination rule 102 translation address '10.5.0.4'
set nat destination rule 102 translation port '53'

# Force NTP
set nat destination rule 104 description 'Force NTP for LAN'
set nat destination rule 104 destination address '!10.1.0.1'
set nat destination rule 104 destination port '123'
set nat destination rule 104 inbound-interface 'eth0'
set nat destination rule 104 protocol 'udp'
set nat destination rule 104 translation address '10.1.0.1'
set nat destination rule 104 translation port '123'

set nat destination rule 105 description 'Force NTP for Servers'
set nat destination rule 105 destination address '!10.1.1.1'
set nat destination rule 105 destination port '123'
set nat destination rule 105 inbound-interface 'eth0.10'
set nat destination rule 105 protocol 'udp'
set nat destination rule 105 translation address '10.1.1.1'
set nat destination rule 105 translation port '123'

set nat destination rule 106 description 'Force NTP for Trusted'
set nat destination rule 106 destination address '!10.1.2.1'
set nat destination rule 106 destination port '123'
set nat destination rule 106 inbound-interface 'eth0.20'
set nat destination rule 106 protocol 'udp'
set nat destination rule 106 translation address '10.1.2.1'
set nat destination rule 106 translation port '123'

set nat destination rule 107 description 'Force NTP for IoT'
set nat destination rule 107 destination address '!10.1.4.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface 'eth0.40'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '10.1.4.1'
set nat destination rule 107 translation port '123'

set nat destination rule 109 description 'Force NTP for Wireguard Trusted'
set nat destination rule 109 destination address '!10.0.11.1'
set nat destination rule 109 destination port '123'
set nat destination rule 109 inbound-interface 'wg01'
set nat destination rule 109 protocol 'udp'
set nat destination rule 109 translation address '10.0.11.1'
set nat destination rule 109 translation port '123'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
# set nat source rule 100 outbound-interface 'eth5'
set nat source rule 100 outbound-interface 'pppoe0'
set nat source rule 100 translation address 'masquerade'
