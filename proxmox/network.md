# Network settings

## Main configuration

Static IP for host set in ISP provided router. Ugreen 2.5Gb switch between the ISP router and Homelab. Additional port connected to the room for accessing network if/when something breaks.

## Tailscale

### IP rules:
1. 100.99.XXX.YYY for physical machines.
- 100.99.1.XXX for homelab related machines
- 100.99.2.XXX for other physical machines
2. 100.100.1.XXX for VMs (same as VM ID omitting first digit).
3. 100.100.2.XXX for CTs (same as CT ID omitting first digit).

### Other rules:

1. Expiry keys are disabled for VMs/CTs and main server

## SSL certificates
SSL certificates are set up only on machines that need them for proper operating. ***Later all the VMs/CTs will get their own SSL certificates.***