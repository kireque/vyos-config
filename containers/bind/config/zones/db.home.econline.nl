; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN home.econline.nl.
@ 3600 IN SOA gateway.home.econline.nl. gateway.home.econline.nl. (
  1690965199         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                             IN  NS gateway.home.econline.nl.

; LAN
gateway                       IN  A  10.1.0.1
ap01                          IN  A  10.1.0.11
ap02                          IN  A  10.1.0.12
switch01                      IN  A  10.1.0.21
switch02                      IN  A  10.1.0.22
synology                      IN  A  10.1.0.31

; Servers
librarium                     IN  A  10.1.1.11
delta                         IN  A  10.1.1.31
enigma                        IN  A  10.1.1.32
felix                         IN  A  10.1.1.33
horus                         IN  A  10.1.1.51
diego                         IN  A  10.1.1.52

; Trusted
oneplus-7t                    IN  A  10.1.2.31
oneplus-8t                    IN  A  10.1.2.32
surface-laptop                IN  A  10.1.2.21

; IOT
utility-room-slzb-05-01       IN  A  10.1.4.11
utility-room-slzb-05-02       IN  A  10.1.4.12
utility-room-doorbell         IN  A  10.1.4.13
utility-room-sprinklers       IN  A  10.1.4.14
kitchen-nspanel               IN  A  10.1.4.15
living-television             IN  A  10.1.4.16
living-harmonyhub             IN  A  10.1.4.17
living-marantz                IN  A  10.1.4.18
bedroom-job-nebula            IN  A  10.1.4.21
bedroom-eva-nebula            IN  A  10.1.4.22
utility-room-doorbell         IN  A  10.1.4.13
utility-room-doorbell         IN  A  10.1.4.13
ubuntu                        IN  A  10.1.4.30
living-speaker                IN  A  10.1.4.31
sunroom-speaker               IN  A  10.1.4.32
office-speaker                IN  A  10.1.4.33


; Video
driveway-camera-doorbell      IN  A  10.1.4.12

; Containers
cluster-0                     IN  A  10.5.0.2

; CNAME records
nas                           IN  CNAME  librarium.home.econline.nl.
pikvm                         IN  CNAME  diego.home.econline.nl.
mqtt                          IN  CNAME  ubuntu.home.econline.nl.
