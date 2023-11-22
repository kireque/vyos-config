# #!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server nl.pool.ntp.org

# # SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# # UDP Broadcast-Relay
# set service broadcast-relay id 1 description 'Bambu 1'
# set service broadcast-relay id 1 interface 'eth0.20'
# set service broadcast-relay id 1 interface 'eth0.40'
# set service broadcast-relay id 1 port '2021'

# set service broadcast-relay id 2 description 'Bambu 2'
# set service broadcast-relay id 2 interface 'eth0.20'
# set service broadcast-relay id 2 interface 'eth0.40'
# set service broadcast-relay id 2 port '1990'

# set service broadcast-relay id 3 description 'Sonos'
# set service broadcast-relay id 3 interface 'eth0.20'
# set service broadcast-relay id 3 interface 'eth0.40'
# set service broadcast-relay id 3 port '1900'

# UPNP for xbox
# set service upnp friendly-name 'gateway'
# set service upnp listen 'eth0.30'
# set service upnp nat-pmp
# set service upnp secure-mode
# set service upnp wan-interface 'pppoe0'
# set service upnp rule 0 action 'allow'
# set service upnp rule 0 external-port-range '88-65535'
# set service upnp rule 0 internal-port-range '88-65535'
# set service upnp rule 0 ip '192.168.3.11'
# set service upnp rule 1 action 'allow'
# set service upnp rule 1 external-port-range '88-65535'
# set service upnp rule 1 internal-port-range '88-65535'
# set service upnp rule 1 ip '192.168.3.12'