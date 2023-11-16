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
synology                      IN  A  192.168.0.3

; Servers
librarium                     IN  A  10.1.1.11
delta                         IN  A  10.1.1.31
enigma                        IN  A  10.1.1.32
felix                         IN  A  10.1.1.33
horus                         IN  A  10.1.1.51
diego                         IN  A  10.1.1.52

; Trusted
bernd-macbook                 IN  A  10.1.2.21
bernd-iphone                  IN  A  10.1.2.31
bernd-ipad                    IN  A  10.1.2.32
manyie-macbook                IN  A  10.1.2.22
manyie-iphone                 IN  A  10.1.2.33
manyie-ipad                   IN  A  10.1.2.34
eva-ipad                      IN  A  10.1.2.35
kitchen-ipad                  IN  A  10.1.2.36

; IOT
utility-room-slzb-05-01       IN  A  10.1.4.11
utility-room-slzb-05-02       IN  A  10.1.4.12
utility-room-doorbell         IN  A  10.1.4.13
ubuntu                        IN  A  10.1.4.30


; Video
driveway-camera-doorbell      IN  A  10.1.4.12

; Containers
cluster-0                     IN  A  10.5.0.2

; CNAME records
nas                           IN  CNAME  librarium.home.econline.nl.
pikvm                         IN  CNAME  diego.home.econline.nl.
mqtt                          IN  CNAME  ubuntu.home.econline.nl.
