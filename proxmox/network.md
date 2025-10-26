# Network settings

## Main configuration

Static IP for host set in ISP provided router. Asus Router set as access point, most of the configuration can only be
done on the ISP provided router.

## Tailscale

### IP rules:
1. 100.99.XXX.YYY for physical machines 
2. 100.100.1.XXX for VMs (same as VM ID omitting first digit)
3. 100.100.2.XXX for CTs (same as CT ID omitting first digit)

### SSL certificates
SSL certificates are set up only on machines that need them for proper operating.
*Later all the VMs/CTs will get their own SSL certificates.*