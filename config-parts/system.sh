# #!/bin/vbash

set system domain-name 'home.econline.nl'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys phone key 'AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFUUzB1CQkryZlW1niQGERY4S7RfmQPURcFxCu03J70xCUWKxgpDyqmqekOQrs7JgaMhKHHmK4jEGefs1aKnY9o='
set system login user vyos authentication public-keys phone type 'ecdsa-sha2-nistp256'
set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIG0sM4pn7l/rp1I9fOF9W8VY3yTXcJc+LVU7rEaDUOBJ'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level info
set system syslog host 10.45.0.2 facility kern level 'warning'
set system syslog host 10.45.0.2 protocol 'tcp'
set system syslog host 10.45.0.2 port '6001'
set system syslog host 10.45.0.2 format 'octet-counted'

set system static-host-mapping host-name gateway inet '10.1.0.1'

# set system task-scheduler task backup-config crontab-spec '30 0 * * *'
# set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup-usb.sh'

set system time-zone 'Europe/Amsterdam'
