# Proxmox

## Installation configuration

Default configuration options.

## Post-install changes

Run PVE Post Install script from [Community Scripts](https://community-scripts.github.io/ProxmoxVE/scripts?id=post-pve-install&category=Proxmox+%26+Virtualization).
Changes:
1. Disabled PVE Enterprise and Ceph Enterprise repository
2. Enabled PVE No Subscription repository
3. Disabled HA services
4. Checked for Proxmox updates
5. Disabled ASPM and locked C-states to 3 using grub file (path: /etc/default/grub, line: GRUB_CMDLINE_LINUX_DEFAULT="quiet
pcie_aspm=off processor.max_cstate=3")

### Scripts from web

1. PVE-mods ([github.com](https://github.com/Meliox/PVE-mods))
2. IOMMU enabling ([CraftComputing](https://drive.google.com/file/d/1rPTKi_b7EFqKTMylH64b3Dg9W0N_XIhO/view))

### Other

1. Nag pop-up removal ([reddit.com](https://www.reddit.com/r/Proxmox/comments/tgojp1/removing_proxmox_subscription_notice/))