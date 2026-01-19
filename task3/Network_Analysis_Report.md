# Network Analysis Report 

## System IP Address
Checked using `ip a`. The system has a private IPv4 address indicating LAN connectivity.

## Connectivity Test
Pinged 8.8.8.8 successfully with 0% packet loss, confirming internet access.

## Open Ports
Used `ss -tuln` to inspect open ports. Observed SSH and system services running.

## DNS Resolution
Used `nslookup` and `dig` to resolve google.com into IP addresses successfully.

## Network Path
Traceroute showed multiple hops between local system and destination server.

## Network Failure Simulation
Disabled network interface using `ip link set down`. Ping failed as expected.
Re-enabled interface and connectivity was restored.

## Conclusion
This task helped understand how systems communicate over networks and how to debug common network issues.
