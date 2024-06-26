#!/bin/vbash

# From GUEST to IOT
set firewall ipv4 name guest-iot default-action 'drop'
set firewall ipv4 name guest-iot description 'From GUEST to IOT'
set firewall ipv4 name guest-iot default-log
set firewall ipv4 name guest-iot rule 999 action 'drop'
set firewall ipv4 name guest-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-iot rule 999 state invalid
set firewall ipv4 name guest-iot rule 999 log


# From GUEST to LAN
set firewall ipv4 name guest-lan default-action 'drop'
set firewall ipv4 name guest-lan description 'From GUEST to LAN'
set firewall ipv4 name guest-lan default-log
set firewall ipv4 name guest-lan rule 999 action 'drop'
set firewall ipv4 name guest-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-lan rule 999 state invalid
set firewall ipv4 name guest-lan rule 999 log

# From GUEST to LOCAL
set firewall ipv4 name guest-local default-action 'drop'
set firewall ipv4 name guest-local description 'From GUEST to LOCAL'
set firewall ipv4 name guest-local default-log
set firewall ipv4 name guest-local rule 50 action 'accept'
set firewall ipv4 name guest-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name guest-local rule 50 destination port '67,68'
set firewall ipv4 name guest-local rule 50 protocol 'udp'
set firewall ipv4 name guest-local rule 50 source port '67,68'
set firewall ipv4 name guest-local rule 999 action 'drop'
set firewall ipv4 name guest-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-local rule 999 state invalid
set firewall ipv4 name guest-local rule 999 log

# From GUEST to SERVERS
set firewall ipv4 name guest-servers default-action 'drop'
set firewall ipv4 name guest-servers description 'From GUEST to SERVERS'
set firewall ipv4 name guest-servers default-log
set firewall ipv4 name guest-servers rule 999 action 'drop'
set firewall ipv4 name guest-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-servers rule 999 state invalid
set firewall ipv4 name guest-servers rule 999 log

# From GUEST to CONTAINERS
set firewall ipv4 name guest-containers default-action 'drop'
set firewall ipv4 name guest-containers description 'From GUEST to CONTAINERS'
set firewall ipv4 name guest-containers default-log
set firewall ipv4 name guest-containers rule 40 action 'accept'
set firewall ipv4 name guest-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name guest-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name guest-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name guest-containers rule 999 action 'drop'
set firewall ipv4 name guest-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-containers rule 999 state invalid
set firewall ipv4 name guest-containers rule 999 log

# From GUEST to TRUSTED
set firewall ipv4 name guest-trusted default-action 'drop'
set firewall ipv4 name guest-trusted description 'From GUEST to TRUSTED'
set firewall ipv4 name guest-trusted default-log
set firewall ipv4 name guest-trusted rule 999 action 'drop'
set firewall ipv4 name guest-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name guest-trusted rule 999 state invalid
set firewall ipv4 name guest-trusted rule 999 log

# From GUEST to WAN
set firewall ipv4 name guest-wan default-action 'accept'
set firewall ipv4 name guest-wan description 'From GUEST to WAN'

# From IOT to GUEST
set firewall ipv4 name iot-guest default-action 'drop'
set firewall ipv4 name iot-guest description 'From IOT to GUEST'
set firewall ipv4 name iot-guest default-log
set firewall ipv4 name iot-guest rule 999 action 'drop'
set firewall ipv4 name iot-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-guest rule 999 state invalid
set firewall ipv4 name iot-guest rule 999 log

# From IOT to LAN
set firewall ipv4 name iot-lan default-action 'drop'
set firewall ipv4 name iot-lan description 'From IOT to LAN'
set firewall ipv4 name iot-lan default-log
set firewall ipv4 name iot-lan rule 999 action 'drop'
set firewall ipv4 name iot-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-lan rule 999 state invalid
set firewall ipv4 name iot-lan rule 999 log

# From IOT to LOCAL
set firewall ipv4 name iot-local default-action 'drop'
set firewall ipv4 name iot-local description 'From IOT to LOCAL'
set firewall ipv4 name iot-local default-log
set firewall ipv4 name iot-local rule 50 action 'accept'
set firewall ipv4 name iot-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name iot-local rule 50 destination port '67,68'
set firewall ipv4 name iot-local rule 50 protocol 'udp'
set firewall ipv4 name iot-local rule 50 source port '67,68'
set firewall ipv4 name iot-local rule 60 action 'accept'
set firewall ipv4 name iot-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name iot-local rule 60 destination port 'ntp'
set firewall ipv4 name iot-local rule 60 protocol 'udp'
set firewall ipv4 name iot-local rule 100 action 'accept'
set firewall ipv4 name iot-local rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name iot-local rule 100 protocol '2'
set firewall ipv4 name iot-local rule 110 action 'accept'
set firewall ipv4 name iot-local rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name iot-local rule 110 destination port 'mdns'
set firewall ipv4 name iot-local rule 110 protocol 'udp'
set firewall ipv4 name iot-local rule 110 source port 'mdns'
set firewall ipv4 name iot-local rule 999 action 'drop'
set firewall ipv4 name iot-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-local rule 999 state invalid
set firewall ipv4 name iot-local rule 999 log

# From IOT to SERVERS
set firewall ipv4 name iot-servers default-action 'drop'
set firewall ipv4 name iot-servers description 'From IOT to SERVERS'
set firewall ipv4 name iot-servers default-log
set firewall ipv4 name iot-servers rule 110 action 'accept'
set firewall ipv4 name iot-servers rule 110 description 'Rule: accept_nfs'
set firewall ipv4 name iot-servers rule 110 destination port 'nfs'
set firewall ipv4 name iot-servers rule 110 source group address-group docker_node
set firewall ipv4 name iot-servers rule 110 destination group address-group 'nas'
set firewall ipv4 name iot-servers rule 110 protocol 'tcp_udp'
set firewall ipv4 name iot-servers rule 300 action 'accept'
set firewall ipv4 name iot-servers rule 300 description 'Rule: accept_mqtt_from_mqtt_clients'
set firewall ipv4 name iot-servers rule 300 destination group address-group 'k8s_mqtt'
set firewall ipv4 name iot-servers rule 300 destination port '1883'
set firewall ipv4 name iot-servers rule 300 protocol 'tcp'
set firewall ipv4 name iot-servers rule 300 source group address-group 'mqtt_clients'
set firewall ipv4 name iot-servers rule 410 action 'accept'
set firewall ipv4 name iot-servers rule 410 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall ipv4 name iot-servers rule 410 destination group address-group 'k8s_ingress'
set firewall ipv4 name iot-servers rule 410 destination port 'http,https'
set firewall ipv4 name iot-servers rule 410 protocol 'tcp'
set firewall ipv4 name iot-servers rule 410 source group address-group 'k8s_ingress_allowed'
set firewall ipv4 name iot-servers rule 999 action 'drop'
set firewall ipv4 name iot-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-servers rule 999 state invalid
set firewall ipv4 name iot-servers rule 999 log

# From IOT to CONTAINERS
set firewall ipv4 name iot-containers default-action 'accept'
set firewall ipv4 name iot-containers description 'From IOT to CONTAINERS'
set firewall ipv4 name iot-containers rule 40 action 'accept'
set firewall ipv4 name iot-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name iot-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name iot-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name iot-containers rule 999 action 'drop'
set firewall ipv4 name iot-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-containers rule 999 state invalid
set firewall ipv4 name iot-containers rule 999 log

# From IOT to TRUSTED
set firewall ipv4 name iot-trusted default-action 'drop'
set firewall ipv4 name iot-trusted description 'From IOT to TRUSTED'
set firewall ipv4 name iot-trusted default-log
set firewall ipv4 name iot-trusted rule 999 action 'drop'
set firewall ipv4 name iot-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name iot-trusted rule 999 state invalid
set firewall ipv4 name iot-trusted rule 999 log

# From IOT to WAN
set firewall ipv4 name iot-wan default-action 'accept'
set firewall ipv4 name iot-wan description 'From IOT to WAN'

# From LAN to GUEST
set firewall ipv4 name lan-guest default-action 'drop'
set firewall ipv4 name lan-guest description 'From LAN to GUEST'
set firewall ipv4 name lan-guest default-log
set firewall ipv4 name lan-guest rule 999 action 'drop'
set firewall ipv4 name lan-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-guest rule 999 state invalid
set firewall ipv4 name lan-guest rule 999 log

# From LAN to IOT
set firewall ipv4 name lan-iot default-action 'drop'
set firewall ipv4 name lan-iot description 'From LAN to IOT'
set firewall ipv4 name lan-iot default-log
set firewall ipv4 name lan-iot rule 410 action 'accept'
set firewall ipv4 name lan-iot rule 410 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall ipv4 name lan-iot rule 410 destination port 'http,https'
set firewall ipv4 name lan-iot rule 410 protocol 'tcp'
set firewall ipv4 name lan-iot rule 999 action 'drop'
set firewall ipv4 name lan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-iot rule 999 state invalid
set firewall ipv4 name lan-iot rule 999 log

# From LAN to LOCAL
set firewall ipv4 name lan-local default-action 'drop'
set firewall ipv4 name lan-local description 'From LAN to LOCAL'
set firewall ipv4 name lan-local default-log
set firewall ipv4 name lan-local rule 50 action 'accept'
set firewall ipv4 name lan-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name lan-local rule 50 destination port '67,68'
set firewall ipv4 name lan-local rule 50 protocol 'udp'
set firewall ipv4 name lan-local rule 50 source port '67,68'
set firewall ipv4 name lan-local rule 60 action 'accept'
set firewall ipv4 name lan-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name lan-local rule 60 destination port 'ntp'
set firewall ipv4 name lan-local rule 60 protocol 'udp'
set firewall ipv4 name lan-local rule 999 action 'drop'
set firewall ipv4 name lan-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-local rule 999 state invalid
set firewall ipv4 name lan-local rule 999 log

# From LAN to SERVERS
set firewall ipv4 name lan-servers default-action 'drop'
set firewall ipv4 name lan-servers description 'From LAN to SERVERS'
set firewall ipv4 name lan-servers default-log
set firewall ipv4 name lan-servers rule 999 action 'drop'
set firewall ipv4 name lan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-servers rule 999 state invalid
set firewall ipv4 name lan-servers rule 999 log

# From LAN to CONTAINERS
set firewall ipv4 name lan-containers default-action 'accept'
set firewall ipv4 name lan-containers description 'From LAN to CONTAINERS'
set firewall ipv4 name lan-containers rule 40 action 'accept'
set firewall ipv4 name lan-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name lan-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name lan-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name lan-containers rule 410 action 'accept'
set firewall ipv4 name lan-containers rule 410 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall ipv4 name lan-containers rule 410 destination port 'http,https'
set firewall ipv4 name lan-containers rule 410 protocol 'tcp'
set firewall ipv4 name lan-containers rule 999 action 'drop'
set firewall ipv4 name lan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-containers rule 999 state invalid
set firewall ipv4 name lan-containers rule 999 log

# From LAN to TRUSTED
set firewall ipv4 name lan-trusted default-action 'drop'
set firewall ipv4 name lan-trusted description 'From LAN to TRUSTED'
set firewall ipv4 name lan-trusted default-log
set firewall ipv4 name lan-trusted rule 999 action 'drop'
set firewall ipv4 name lan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name lan-trusted rule 999 state invalid
set firewall ipv4 name lan-trusted rule 999 log

# From LAN to WAN
set firewall ipv4 name lan-wan default-action 'accept'
set firewall ipv4 name lan-wan description 'From LAN to WAN'

# From LOCAL to GUEST
set firewall ipv4 name local-guest default-action 'drop'
set firewall ipv4 name local-guest description 'From LOCAL to GUEST'
set firewall ipv4 name local-guest default-log
set firewall ipv4 name local-guest rule 999 action 'drop'
set firewall ipv4 name local-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-guest rule 999 state invalid
set firewall ipv4 name local-guest rule 999 log

# From LOCAL to IOT
set firewall ipv4 name local-iot default-action 'drop'
set firewall ipv4 name local-iot description 'From LOCAL to IOT'
set firewall ipv4 name local-iot default-log
set firewall ipv4 name local-iot rule 100 action 'accept'
set firewall ipv4 name local-iot rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-iot rule 100 protocol '2'
set firewall ipv4 name local-iot rule 110 action 'accept'
set firewall ipv4 name local-iot rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-iot rule 110 destination port 'mdns'
set firewall ipv4 name local-iot rule 110 protocol 'udp'
set firewall ipv4 name local-iot rule 110 source port 'mdns'
set firewall ipv4 name local-iot rule 999 action 'drop'
set firewall ipv4 name local-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-iot rule 999 state invalid
set firewall ipv4 name local-iot rule 999 log

# From LOCAL to LAN
set firewall ipv4 name local-lan default-action 'drop'
set firewall ipv4 name local-lan description 'From LOCAL to LAN'
set firewall ipv4 name local-lan default-log
set firewall ipv4 name local-lan rule 999 action 'drop'
set firewall ipv4 name local-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-lan rule 999 state invalid
set firewall ipv4 name local-lan rule 999 log

# From LOCAL to SERVERS
set firewall ipv4 name local-servers default-action 'drop'
set firewall ipv4 name local-servers description 'From LOCAL to SERVERS'
set firewall ipv4 name local-servers default-log
set firewall ipv4 name local-servers rule 40 action 'accept'
set firewall ipv4 name local-servers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-servers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-servers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-servers rule 70 action 'accept'
set firewall ipv4 name local-servers rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name local-servers rule 70 destination port 'bgp'
set firewall ipv4 name local-servers rule 70 protocol 'tcp'
set firewall ipv4 name local-servers rule 100 action 'accept'
set firewall ipv4 name local-servers rule 100 description 'Rule: accept_k8s_api'
set firewall ipv4 name local-servers rule 100 destination port '6443'
set firewall ipv4 name local-servers rule 100 protocol 'tcp'
set firewall ipv4 name local-servers rule 200 action 'accept'
set firewall ipv4 name local-servers rule 200 description 'Rule: accept_vector_syslog'
set firewall ipv4 name local-servers rule 200 destination group address-group 'k8s_vector_aggregator'
set firewall ipv4 name local-servers rule 200 destination port '6001'
set firewall ipv4 name local-servers rule 200 protocol 'tcp'
set firewall ipv4 name local-servers rule 999 action 'drop'
set firewall ipv4 name local-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-servers rule 999 state invalid
set firewall ipv4 name local-servers rule 999 log

# From LOCAL to CONTAINERS
set firewall ipv4 name local-containers default-action 'accept'
set firewall ipv4 name local-containers description 'From LOCAL to CONTAINERS'
set firewall ipv4 name local-containers rule 40 action 'accept'
set firewall ipv4 name local-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name local-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name local-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name local-containers rule 999 action 'drop'
set firewall ipv4 name local-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-containers rule 999 state invalid
set firewall ipv4 name local-containers rule 999 log

# From LOCAL to TRUSTED
set firewall ipv4 name local-trusted default-action 'drop'
set firewall ipv4 name local-trusted description 'From LOCAL to TRUSTED'
set firewall ipv4 name local-trusted default-log
set firewall ipv4 name local-trusted rule 100 action 'accept'
set firewall ipv4 name local-trusted rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name local-trusted rule 100 protocol '2'
set firewall ipv4 name local-trusted rule 110 action 'accept'
set firewall ipv4 name local-trusted rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name local-trusted rule 110 destination port 'mdns'
set firewall ipv4 name local-trusted rule 110 protocol 'udp'
set firewall ipv4 name local-trusted rule 110 source port 'mdns'
set firewall ipv4 name local-trusted rule 200 action 'accept'
set firewall ipv4 name local-trusted rule 200 description 'Rule: accept_wireguard'
set firewall ipv4 name local-trusted rule 200 source port '51820'
set firewall ipv4 name local-trusted rule 200 protocol 'udp'
set firewall ipv4 name local-trusted rule 999 action 'drop'
set firewall ipv4 name local-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name local-trusted rule 999 state invalid
set firewall ipv4 name local-trusted rule 999 log

# From LOCAL to WAN
set firewall ipv4 name local-wan default-action 'accept'
set firewall ipv4 name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall ipv4 name servers-guest default-action 'drop'
set firewall ipv4 name servers-guest description 'From SERVERS to GUEST'
set firewall ipv4 name servers-guest default-log
set firewall ipv4 name servers-guest rule 999 action 'drop'
set firewall ipv4 name servers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-guest rule 999 state invalid
set firewall ipv4 name servers-guest rule 999 log

# From SERVERS to IOT
set firewall ipv4 name servers-iot default-action 'drop'
set firewall ipv4 name servers-iot description 'From SERVERS to IOT'
set firewall ipv4 name servers-iot default-log
set firewall ipv4 name servers-iot rule 100 action 'accept'
set firewall ipv4 name servers-iot rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 100 protocol 'tcp'
set firewall ipv4 name servers-iot rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 110 action 'accept'
set firewall ipv4 name servers-iot rule 110 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-iot rule 110 protocol 'icmp'
set firewall ipv4 name servers-iot rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-iot rule 999 action 'drop'
set firewall ipv4 name servers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-iot rule 999 state invalid
set firewall ipv4 name servers-iot rule 999 log

# From SERVERS to LAN
set firewall ipv4 name servers-lan default-action 'drop'
set firewall ipv4 name servers-lan description 'From SERVERS to LAN'
set firewall ipv4 name servers-lan default-log
set firewall ipv4 name servers-lan rule 100 action 'accept'
set firewall ipv4 name servers-lan rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-lan rule 100 destination port '9000,10901'
set firewall ipv4 name servers-lan rule 100 protocol 'tcp'
set firewall ipv4 name servers-lan rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-lan rule 999 action 'drop'
set firewall ipv4 name servers-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-lan rule 999 state invalid
set firewall ipv4 name servers-lan rule 999 log

# From SERVERS to LOCAL
set firewall ipv4 name servers-local default-action 'drop'
set firewall ipv4 name servers-local description 'From SERVERS to LOCAL'
set firewall ipv4 name servers-local default-log
set firewall ipv4 name servers-local rule 50 action 'accept'
set firewall ipv4 name servers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name servers-local rule 50 destination port '67,68'
set firewall ipv4 name servers-local rule 50 protocol 'udp'
set firewall ipv4 name servers-local rule 50 source port '67,68'
set firewall ipv4 name servers-local rule 60 action 'accept'
set firewall ipv4 name servers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name servers-local rule 60 destination port 'ntp'
set firewall ipv4 name servers-local rule 60 protocol 'udp'
set firewall ipv4 name servers-local rule 70 action 'accept'
set firewall ipv4 name servers-local rule 70 description 'Rule: accept_bgp'
set firewall ipv4 name servers-local rule 70 destination port 'bgp'
set firewall ipv4 name servers-local rule 70 protocol 'tcp'
set firewall ipv4 name servers-local rule 80 action 'accept'
set firewall ipv4 name servers-local rule 80 description 'Rule: accept_tftp'
set firewall ipv4 name servers-local rule 80 destination port '69'
set firewall ipv4 name servers-local rule 80 protocol 'udp'
set firewall ipv4 name servers-local rule 100 action 'accept'
set firewall ipv4 name servers-local rule 100 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 100 destination port '9100'
set firewall ipv4 name servers-local rule 100 protocol 'tcp'
set firewall ipv4 name servers-local rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 110 action 'accept'
set firewall ipv4 name servers-local rule 110 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall ipv4 name servers-local rule 110 destination port '9798'
set firewall ipv4 name servers-local rule 110 protocol 'tcp'
set firewall ipv4 name servers-local rule 110 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-local rule 999 action 'drop'
set firewall ipv4 name servers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-local rule 999 state invalid
set firewall ipv4 name servers-local rule 999 log

# From SERVERS to CONTAINERS
set firewall ipv4 name servers-containers default-action 'accept'
set firewall ipv4 name servers-containers description 'From SERVERS to CONTAINERS'
set firewall ipv4 name servers-containers default-log
set firewall ipv4 name servers-containers rule 40 action 'accept'
set firewall ipv4 name servers-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name servers-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name servers-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name servers-containers rule 100 action 'accept'
set firewall ipv4 name servers-containers rule 100 description 'Rule: accept_k8s_nodes'
set firewall ipv4 name servers-containers rule 100 protocol 'tcp'
set firewall ipv4 name servers-containers rule 100 source group address-group 'k8s_nodes'
set firewall ipv4 name servers-containers rule 999 action 'drop'
set firewall ipv4 name servers-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-containers rule 999 state invalid
set firewall ipv4 name servers-containers rule 999 log

# From SERVERS to TRUSTED
set firewall ipv4 name servers-trusted default-action 'drop'
set firewall ipv4 name servers-trusted description 'From SERVERS to TRUSTED'
set firewall ipv4 name servers-trusted default-log
set firewall ipv4 name servers-trusted rule 999 action 'drop'
set firewall ipv4 name servers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name servers-trusted rule 999 state invalid
set firewall ipv4 name servers-trusted rule 999 log

# From SERVERS to WAN
set firewall ipv4 name servers-wan default-action 'accept'
set firewall ipv4 name servers-wan description 'From SERVERS to WAN'

# From CONTAINERS to GUEST
set firewall ipv4 name containers-guest default-action 'drop'
set firewall ipv4 name containers-guest description 'From CONTAINERS to GUEST'
set firewall ipv4 name containers-guest default-log
set firewall ipv4 name containers-guest rule 999 action 'drop'
set firewall ipv4 name containers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-guest rule 999 state invalid
set firewall ipv4 name containers-guest rule 999 log

# From CONTAINERS to IOT
set firewall ipv4 name containers-iot default-action 'drop'
set firewall ipv4 name containers-iot description 'From CONTAINERS to IOT'
set firewall ipv4 name containers-iot default-log
set firewall ipv4 name containers-iot rule 999 action 'drop'
set firewall ipv4 name containers-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-iot rule 999 state invalid
set firewall ipv4 name containers-iot rule 999 log

# From CONTAINERS to LAN
set firewall ipv4 name containers-lan default-action 'drop'
set firewall ipv4 name containers-lan description 'From CONTAINERS to LAN'
set firewall ipv4 name containers-lan default-log
set firewall ipv4 name containers-lan rule 999 action 'drop'
set firewall ipv4 name containers-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-lan rule 999 state invalid
set firewall ipv4 name containers-lan rule 999 log

# From CONTAINERS to LOCAL
set firewall ipv4 name containers-local default-action 'drop'
set firewall ipv4 name containers-local description 'From CONTAINERS to LOCAL'
set firewall ipv4 name containers-local default-log
set firewall ipv4 name containers-local rule 40 action 'accept'
set firewall ipv4 name containers-local rule 40 description 'Rule: accept_dns'
set firewall ipv4 name containers-local rule 40 destination port 'domain,domain-s'
set firewall ipv4 name containers-local rule 40 protocol 'tcp_udp'
set firewall ipv4 name containers-local rule 50 action 'accept'
set firewall ipv4 name containers-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name containers-local rule 50 destination port '67,68'
set firewall ipv4 name containers-local rule 50 protocol 'udp'
set firewall ipv4 name containers-local rule 50 source port '67,68'
set firewall ipv4 name containers-local rule 60 action 'accept'
set firewall ipv4 name containers-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name containers-local rule 60 destination port 'ntp'
set firewall ipv4 name containers-local rule 60 protocol 'udp'
set firewall ipv4 name containers-local rule 999 action 'drop'
set firewall ipv4 name containers-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-local rule 999 state invalid
set firewall ipv4 name containers-local rule 999 log

# From CONTAINERS to SERVERS
set firewall ipv4 name containers-servers default-action 'accept'
set firewall ipv4 name containers-servers description 'From CONTAINERS to SERVERS'
set firewall ipv4 name containers-servers rule 999 action 'drop'
set firewall ipv4 name containers-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-servers rule 999 state invalid
set firewall ipv4 name containers-servers rule 999 log

# From CONTAINERS to TRUSTED
set firewall ipv4 name containers-trusted default-action 'drop'
set firewall ipv4 name containers-trusted description 'From CONTAINERS to TRUSTED'
set firewall ipv4 name containers-trusted default-log
set firewall ipv4 name containers-trusted rule 999 action 'drop'
set firewall ipv4 name containers-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name containers-trusted rule 999 state invalid
set firewall ipv4 name containers-trusted rule 999 log

# From CONTAINERS to WAN
set firewall ipv4 name containers-wan default-action 'accept'
set firewall ipv4 name containers-wan description 'From CONTAINERS to WAN'

# From TRUSTED to GUEST
set firewall ipv4 name trusted-guest default-action 'drop'
set firewall ipv4 name trusted-guest description 'From TRUSTED to GUEST'
set firewall ipv4 name trusted-guest default-log
set firewall ipv4 name trusted-guest rule 999 action 'drop'
set firewall ipv4 name trusted-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-guest rule 999 state invalid
set firewall ipv4 name trusted-guest rule 999 log

# From TRUSTED to IOT
set firewall ipv4 name trusted-iot default-action 'accept'
set firewall ipv4 name trusted-iot description 'From TRUSTED to IOT'
set firewall ipv4 name trusted-iot rule 999 action 'drop'
set firewall ipv4 name trusted-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-iot rule 999 state invalid
set firewall ipv4 name trusted-iot rule 999 log

# From TRUSTED to LAN
set firewall ipv4 name trusted-lan default-action 'accept'
set firewall ipv4 name trusted-lan description 'From TRUSTED to LAN'
set firewall ipv4 name trusted-lan rule 999 action 'drop'
set firewall ipv4 name trusted-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-lan rule 999 state invalid
set firewall ipv4 name trusted-lan rule 999 log

# From TRUSTED to LOCAL
set firewall ipv4 name trusted-local default-action 'drop'
set firewall ipv4 name trusted-local description 'From TRUSTED to LOCAL'
set firewall ipv4 name trusted-local default-log
set firewall ipv4 name trusted-local rule 50 action 'accept'
set firewall ipv4 name trusted-local rule 50 description 'Rule: accept_dhcp'
set firewall ipv4 name trusted-local rule 50 destination port '67,68'
set firewall ipv4 name trusted-local rule 50 protocol 'udp'
set firewall ipv4 name trusted-local rule 50 source port '67,68'
set firewall ipv4 name trusted-local rule 60 action 'accept'
set firewall ipv4 name trusted-local rule 60 description 'Rule: accept_ntp'
set firewall ipv4 name trusted-local rule 60 destination port 'ntp'
set firewall ipv4 name trusted-local rule 60 protocol 'udp'
set firewall ipv4 name trusted-local rule 100 action 'accept'
set firewall ipv4 name trusted-local rule 100 description 'Rule: accept_igmp'
set firewall ipv4 name trusted-local rule 100 protocol '2'
set firewall ipv4 name trusted-local rule 110 action 'accept'
set firewall ipv4 name trusted-local rule 110 description 'Rule: accept_mdns'
set firewall ipv4 name trusted-local rule 110 destination port 'mdns'
set firewall ipv4 name trusted-local rule 110 protocol 'udp'
set firewall ipv4 name trusted-local rule 110 source port 'mdns'
set firewall ipv4 name trusted-local rule 200 action 'accept'
set firewall ipv4 name trusted-local rule 200 description 'Rule: accept_ssh'
set firewall ipv4 name trusted-local rule 200 destination port 'ssh'
set firewall ipv4 name trusted-local rule 200 protocol 'tcp'
set firewall ipv4 name trusted-local rule 210 action 'accept'
set firewall ipv4 name trusted-local rule 210 description 'Rule: accept_vyos_api'
set firewall ipv4 name trusted-local rule 210 destination port '8443'
set firewall ipv4 name trusted-local rule 210 protocol 'tcp'
set firewall ipv4 name trusted-local rule 220 action 'accept'
set firewall ipv4 name trusted-local rule 220 description 'Rule: accept_wireguard'
set firewall ipv4 name trusted-local rule 220 destination port '51820'
set firewall ipv4 name trusted-local rule 220 protocol 'udp'
set firewall ipv4 name trusted-local rule 999 action 'drop'
set firewall ipv4 name trusted-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-local rule 999 state invalid
set firewall ipv4 name trusted-local rule 999 log

# From TRUSTED to SERVERS
set firewall ipv4 name trusted-servers default-action 'accept'
set firewall ipv4 name trusted-servers description 'From TRUSTED to SERVERS'
set firewall ipv4 name trusted-servers rule 999 action 'drop'
set firewall ipv4 name trusted-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-servers rule 999 state invalid
set firewall ipv4 name trusted-servers rule 999 log

# From TRUSTED to CONTAINERS
set firewall ipv4 name trusted-containers default-action 'accept'
set firewall ipv4 name trusted-containers description 'From TRUSTED to CONTAINERS'
set firewall ipv4 name trusted-containers rule 40 action 'accept'
set firewall ipv4 name trusted-containers rule 40 description 'Rule: accept_dns'
set firewall ipv4 name trusted-containers rule 40 destination port 'domain,domain-s'
set firewall ipv4 name trusted-containers rule 40 protocol 'tcp_udp'
set firewall ipv4 name trusted-containers rule 999 action 'drop'
set firewall ipv4 name trusted-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name trusted-containers rule 999 state invalid
set firewall ipv4 name trusted-containers rule 999 log

# From TRUSTED to WAN
set firewall ipv4 name trusted-wan default-action 'accept'
set firewall ipv4 name trusted-wan description 'From TRUSTED to WAN'

# From WAN to GUEST
set firewall ipv4 name wan-guest default-action 'drop'
set firewall ipv4 name wan-guest description 'From WAN to GUEST'
set firewall ipv4 name wan-guest default-log
set firewall ipv4 name wan-guest rule 999 action 'drop'
set firewall ipv4 name wan-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-guest rule 999 state invalid
set firewall ipv4 name wan-guest rule 999 log

# From WAN to IOT
set firewall ipv4 name wan-iot default-action 'drop'
set firewall ipv4 name wan-iot description 'From WAN to IOT'
set firewall ipv4 name wan-iot default-log
set firewall ipv4 name wan-iot rule 100 action 'accept'
set firewall ipv4 name wan-iot rule 100 description 'Rule: accept_ingress_from_cloudflare'
set firewall ipv4 name wan-iot rule 100 destination group address-group 'docker_node'
set firewall ipv4 name wan-iot rule 100 destination port 'http,https'
set firewall ipv4 name wan-iot rule 100 protocol 'tcp'
set firewall ipv4 name wan-iot rule 100 source group network-group 'cloudflare-ipv4'
set firewall ipv4 name wan-iot rule 999 action 'drop'
set firewall ipv4 name wan-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-iot rule 999 state invalid
set firewall ipv4 name wan-iot rule 999 log

# From WAN to LAN
set firewall ipv4 name wan-lan default-action 'drop'
set firewall ipv4 name wan-lan description 'From WAN to LAN'
set firewall ipv4 name wan-lan default-log
set firewall ipv4 name wan-lan rule 999 action 'drop'
set firewall ipv4 name wan-lan rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-lan rule 999 state invalid
set firewall ipv4 name wan-lan rule 999 log

# From WAN to LOCAL
set firewall ipv4 name wan-local default-action 'drop'
set firewall ipv4 name wan-local description 'From WAN to LOCAL'
set firewall ipv4 name wan-local default-log
set firewall ipv4 name wan-local rule 1 action 'drop'
set firewall ipv4 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv4 name wan-local rule 1 state invalid
set firewall ipv4 name wan-local rule 1 log
set firewall ipv4 name wan-local rule 100 action 'accept'
set firewall ipv4 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv4 name wan-local rule 100 destination port '51820'
set firewall ipv4 name wan-local rule 100 protocol 'udp'
set firewall ipv4 name wan-local rule 101 action 'accept'
set firewall ipv4 name wan-local rule 101 description 'Rule: accept_uptimerobot'
set firewall ipv4 name wan-local rule 101 protocol 'icmp'
set firewall ipv4 name wan-local rule 101 source group network-group 'uptimerobot-ipv4'

# From WAN to SERVERS
set firewall ipv4 name wan-servers default-action 'drop'
set firewall ipv4 name wan-servers description 'From WAN to SERVERS'
set firewall ipv4 name wan-servers default-log
set firewall ipv4 name wan-servers rule 999 action 'drop'
set firewall ipv4 name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-servers rule 999 state invalid
set firewall ipv4 name wan-servers rule 999 log

# From WAN to CONTAINERS
set firewall ipv4 name wan-containers default-action 'drop'
set firewall ipv4 name wan-containers description 'From WAN to CONTAINERS'
set firewall ipv4 name wan-containers default-log
set firewall ipv4 name wan-containers rule 999 action 'drop'
set firewall ipv4 name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-containers rule 999 state invalid
set firewall ipv4 name wan-containers rule 999 log

# From WAN to TRUSTED
set firewall ipv4 name wan-trusted default-action 'drop'
set firewall ipv4 name wan-trusted description 'From WAN to TRUSTED'
set firewall ipv4 name wan-trusted default-log
set firewall ipv4 name wan-trusted rule 999 action 'drop'
set firewall ipv4 name wan-trusted rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name wan-trusted rule 999 state invalid
set firewall ipv4 name wan-trusted rule 999 log
