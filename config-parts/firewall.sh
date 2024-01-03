# #!/bin/vbash

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable

# # Router (VyOS itself)
set firewall group address-group router-addresses address 10.0.0.1
set firewall group address-group router-addresses address 127.0.0.1
set firewall group ipv6-address-group router-addresses-ipv6 address fe80::e63a:6eff:fe5a:f805
set firewall group ipv6-address-group router-addresses-ipv6 address ::1

# docker node groups
set firewall group address-group docker_node address '10.1.4.30'

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

# Port groups
set firewall group port-group wireguard port '51820'

# Network groups
set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'
set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'

set firewall group network-group uptimerobot-ipv4 network '216.144.250.150/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.226/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.227/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.228/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.229/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.230/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.231/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.232/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.233/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.234/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.235/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.236/32'
set firewall group network-group uptimerobot-ipv4 network '69.162.124.237/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.242/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.243/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.244/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.245/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.246/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.247/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.248/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.249/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.250/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.251/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.252/32'
set firewall group network-group uptimerobot-ipv4 network '63.143.42.253/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.82/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.83/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.84/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.85/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.86/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.87/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.88/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.89/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.90/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.91/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.92/32'
set firewall group network-group uptimerobot-ipv4 network '216.245.221.93/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.18/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.19/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.20/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.21/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.22/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.23/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.24/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.25/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.26/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.27/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.28/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.29/32'
set firewall group network-group uptimerobot-ipv4 network '208.115.199.30/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.18/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.19/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.20/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.21/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.22/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.23/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.24/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.25/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.26/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.27/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.28/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.29/32'
set firewall group network-group uptimerobot-ipv4 network '216.144.248.30/32'
set firewall group network-group uptimerobot-ipv4 network '46.137.190.132/32'
set firewall group network-group uptimerobot-ipv4 network '122.248.234.23/32'
set firewall group network-group uptimerobot-ipv4 network '167.99.209.234/32'
set firewall group network-group uptimerobot-ipv4 network '178.62.52.237/32'
set firewall group network-group uptimerobot-ipv4 network '54.79.28.129/32'
set firewall group network-group uptimerobot-ipv4 network '54.94.142.218/32'
set firewall group network-group uptimerobot-ipv4 network '104.131.107.63/32'
set firewall group network-group uptimerobot-ipv4 network '54.67.10.127/32'
set firewall group network-group uptimerobot-ipv4 network '54.64.67.106/32'
set firewall group network-group uptimerobot-ipv4 network '159.203.30.41/32'
set firewall group network-group uptimerobot-ipv4 network '46.101.250.135/32'
set firewall group network-group uptimerobot-ipv4 network '18.221.56.27/32'
set firewall group network-group uptimerobot-ipv4 network '52.60.129.180/32'
set firewall group network-group uptimerobot-ipv4 network '159.89.8.111/32'
set firewall group network-group uptimerobot-ipv4 network '146.185.143.14/32'
set firewall group network-group uptimerobot-ipv4 network '139.59.173.249/32'
set firewall group network-group uptimerobot-ipv4 network '165.227.83.148/32'
set firewall group network-group uptimerobot-ipv4 network '128.199.195.156/32'
set firewall group network-group uptimerobot-ipv4 network '138.197.150.151/32'
set firewall group network-group uptimerobot-ipv4 network '34.233.66.117/32'
set firewall group network-group uptimerobot-ipv4 network '52.70.84.165/32'
set firewall group network-group uptimerobot-ipv4 network '54.225.82.45/32'
set firewall group network-group uptimerobot-ipv4 network '54.224.73.211/32'
set firewall group network-group uptimerobot-ipv4 network '3.79.92.117/32'
set firewall group network-group uptimerobot-ipv4 network '3.21.136.87/32'
set firewall group network-group uptimerobot-ipv4 network '35.170.215.196/32'
set firewall group network-group uptimerobot-ipv4 network '35.153.243.148/32'
set firewall group network-group uptimerobot-ipv4 network '18.116.158.121/32'
set firewall group network-group uptimerobot-ipv4 network '18.223.50.16/32'
set firewall group network-group uptimerobot-ipv4 network '54.241.175.147/32'
