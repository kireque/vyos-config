#!/bin/vbash

# Container networks
set container network containers description 'Network for VyOS containers'
set container network containers prefix '10.5.0.0/24'

# cloudflare-ddns
set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'ipv4.econline.nl'
set container name cloudflare-ddns environment PROXIED value 'true'
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value 'Europe/Amsterdam'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# blocky
set container name blocky image 'ghcr.io/0xerr0r/blocky:development@sha256:7dd109bfb4bcfb975732ef0a57b3d8bda40993b322bf1ad4871cb6c78ed943f5'
set container name blocky memory '0'
set container name blocky network containers address '10.5.0.7'
set container name blocky shared-memory '0'
set container name blocky restart 'on-failure'
set container name blocky environment TZ value 'Europe/Amsterdam'
set container name blocky volume config source '/config/containers/blocky/config/config.yml'
set container name blocky volume config destination '/app/config.yml'
set container name blocky volume config mode 'ro'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network containers address '10.5.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'Europe/Amsterdam'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.2'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist network containers address '10.5.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.2.0'
set container name lego-auto memory '0'
set container name lego-auto allow-host-networks
set container name lego-auto shared-memory '0'
set container name lego-auto restart 'on-failure'
set container name lego-auto environment TZ value 'Europe/Amsterdam'
set container name lego-auto environment LA_DATADIR value '/config'
set container name lego-auto environment LA_CACHEDIR value '/config/.cache'
set container name lego-auto environment LA_EMAIL value 'postmaster@econline.nl'
set container name lego-auto environment LA_PROVIDER value 'cloudflare'
set container name lego-auto environment LA_DOMAINS value '*.econline.nl'
set container name lego-auto environment CF_DNS_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name lego-auto volume datadir source '/config/secrets/certs/_.econline.nl'
set container name lego-auto volume datadir destination '/config'
set container name lego-auto volume datadir mode 'rw'

# # haproxy-k8s-api


# # node-exporter


# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.4'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter allow-host-networks
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'

# udp-broadcast-relay-mdns
set container name udp-broadcast-relay-mdns allow-host-networks
set container name udp-broadcast-relay-mdns cap-add 'net-raw'
set container name udp-broadcast-relay-mdns environment CFG_DEV value 'eth0;eth0.20;eth0.40' # remove eth0 after migration
set container name udp-broadcast-relay-mdns environment CFG_ID value '2'
set container name udp-broadcast-relay-mdns environment CFG_MULTICAST value '224.0.0.251'
set container name udp-broadcast-relay-mdns environment CFG_PORT value '5353'
set container name udp-broadcast-relay-mdns environment SEPARATOR value ';'
set container name udp-broadcast-relay-mdns image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-mdns memory '0'
set container name udp-broadcast-relay-mdns restart 'on-failure'
set container name udp-broadcast-relay-mdns shared-memory '0'

# unifi
set container name unifi environment TZ value 'Europe/Amsterdam'
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment PGID value '102'
set container name unifi environment PUID value '999'
set container name unifi image 'ghcr.io/goofball222/unifi:7.5.187'
set container name unifi memory '0'
set container name unifi network containers address '10.5.0.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume cert source '/config/containers/unifi/cert'
set container name unifi volume cert destination '/usr/lib/unifi/cert'
set container name unifi volume cert mode 'rw'
set container name unifi volume data source '/config/containers/unifi/data'
set container name unifi volume data destination '/usr/lib/unifi/data'
set container name unifi volume data mode 'rw'
set container name unifi volume logs source '/config/containers/unifi/logs'
set container name unifi volume logs destination '/usr/lib/unifi/logs'
set container name unifi volume logs mode 'rw'

# # onepassword-connect


# # onepassword-sync
