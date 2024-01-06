; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN econline.nl.
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
www                           IN  A  10.1.0.1
