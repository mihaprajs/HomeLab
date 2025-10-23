# Network settings

## Main configuration

Static IP for host set in ISP provided router. Asus Router set as access point, most of the configuration can only be
done on the ISP provided router.

## Tailscale

Rules:
1. Physical machines have IPs of 100.99.1.X
2. Virtual machines (VMs) have IPs of 100.100.1.X where X is equal to the machine ID omitting first digit
3. Linux containers (LXCs) have IPs of 100.100.2.X where X is equal to the machine ID omitting first digit
4. SSL cert. only for machines that will need it *(until later when every machine gets its own SSL cert. and subdomain)*
5. IPs looking like 100.99.2.YYY it is a mobile device (e.g. laptop, phone)