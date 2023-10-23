# #!/bin/vbash

# Interface groups
set firewall group interface-group IG_containers interface 'pod-containers'
set firewall group interface-group IG_guest interface 'eth0.30'
set firewall group interface-group IG_iot interface 'eth0.40'
set firewall group interface-group IG_lan interface 'eth0'
set firewall group interface-group IG_servers interface 'eth0.10'
set firewall group interface-group IG_trusted interface 'eth0.20'
# set firewall group interface-group IG_trusted interface 'wg01'
set firewall group interface-group IG_wan interface 'pppoe0'

# # Router (VyOS itself)
set firewall group address-group router-addresses address 10.0.0.1
set firewall group address-group router-addresses address 127.0.0.1
set firewall group ipv6-address-group router-addresses-ipv6 address fe80::e63a:6eff:fe5a:f805
set firewall group ipv6-address-group router-addresses-ipv6 address ::1

# docker node groups
set firewall group address-group docker_node address '10.0.1.206'

# # k8s nodes
set firewall group address-group k8s_nodes address '10.1.1.31-10.1.1.33' # Servers vLAN
set firewall group address-group k8s_nodes address '10.1.4.121-10.1.4.123' # IoT vLAN

# # k8s ingress client devices
set firewall group address-group k8s_ingress_allowed address '10.1.3.35'
set firewall group address-group k8s_ingress_allowed address '10.1.3.36'
set firewall group address-group k8s_ingress_allowed address '10.1.3.53'
set firewall group address-group k8s_ingress_allowed address '10.1.3.54'

# # k8s cluster services
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_hass address '10.1.3.151'
set firewall group address-group k8s_ingress address '10.45.0.1'
set firewall group address-group k8s_ingress address '10.45.0.3'
set firewall group address-group k8s_mqtt address '10.45.0.10'
set firewall group address-group k8s_plex address '10.45.0.20'
set firewall group address-group k8s_vector_aggregator address '10.45.0.2'

# # MQTT client devices
set firewall group address-group mqtt_clients address '10.1.2.21' # Bernd
set firewall group address-group mqtt_clients address '10.1.2.32'
set firewall group address-group mqtt_clients address '10.1.4.18' # Vacuum livingroom
set firewall group address-group mqtt_clients address '10.1.4.22' # Vacuum upstairs


# # Unifi devices
# set firewall group address-group unifi_devices address '10.1.0.11-10.1.0.13' # Switches
# set firewall group address-group unifi_devices address '10.1.0.21-10.1.0.24' # AP's

# # Vyos containers addresses
set firewall group address-group vyos_coredns address '10.5.0.3'
set firewall group address-group vyos_dnsdist address '10.5.0.4'
set firewall group address-group vyos_unifi address '10.5.0.10'

# # Storage devices
# set firewall group address-group nas address '10.1.1.11'

# # Port groups
# set firewall group port-group wireguard port '51820'

# Network groups
set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'
set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'