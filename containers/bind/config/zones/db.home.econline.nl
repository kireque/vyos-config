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
attic-office-3dprinter        IN  A  10.1.3.11
attic-office-3dprinter-plug   IN  A  10.1.3.33
attic-office-desk-plug        IN  A  10.1.3.31
attic-office-hue-bridge       IN  A  10.1.3.24
attic-office-speaker-esp      IN  A  10.1.3.36
bedroom-bed-occupancy-esp     IN  A  10.1.3.37
bedroom-eva-sonos             IN  A  10.1.3.65
bernd-ereader                 IN  A  10.1.3.51
garage-tablet                 IN  A  10.1.3.54
garden-wlanthermo             IN  A  10.1.3.21
hallway-p1reader-esp          IN  A  10.1.3.45
hallway-tablet                IN  A  10.1.3.53
hallway-tado-bridge           IN  A  10.1.3.23
hallway-zigbee-adapter        IN  A  10.1.3.46
kitchen-coffeemaker           IN  A  10.1.3.13
kitchen-oven                  IN  A  10.1.3.12
kitchen-sonos                 IN  A  10.1.3.61
livingroom-airpurifier        IN  A  10.1.3.19
livingroom-atv                IN  A  10.1.3.16
livingroom-harmony-hub        IN  A  10.1.3.15
livingroom-nintendo-switch    IN  A  10.1.3.20
livingroom-receiver           IN  A  10.1.3.17
livingroom-receiver-sonos     IN  A  10.1.3.66
livingroom-sonos              IN  A  10.1.3.63
livingroom-sonos-move         IN  A  10.1.3.67
livingroom-tv                 IN  A  10.1.3.14
livingroom-vacuum             IN  A  10.1.3.18
manyie-ereader                IN  A  10.1.3.52
spare-p1eu-1                  IN  A  10.1.3.34
study-printer                 IN  A  10.1.3.55
upstairs-office-desk-plug     IN  A  10.1.3.32
upstairs-office-sonos         IN  A  10.1.3.62
upstairs-office-speaker-esp   IN  A  10.1.3.35
upstairs-vacuum               IN  A  10.1.3.22

; Video
driveway-camera-doorbell      IN  A  10.1.4.12

; Containers
cluster-0                     IN  A  10.5.0.2

; CNAME records
nas                           IN  CNAME  librarium.home.econline.nl.
pikvm                         IN  CNAME  diego.home.econline.nl.