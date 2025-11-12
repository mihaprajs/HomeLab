# Hardware

## Physical machines

This is all the hardware and components I am using in my **Homelab**:

Proxmox server:
- CPU: Intel i5-14500
- Motherboard: Gigabyte Z790 UD
  - RAM: 4x Crucial Pro DDR4 16 GB 6000 MT/s
  - Storage:
    - Boot SSD/NVME: Kingston NV2 500 GB
    - VM/CT storage: 2x Western Digital Red SN700 1 TB + 2x IcyBox flat aluminium cooler
    - File storage HDD: 4x Seagate IronWolf 2 TB + 2x Crucial BX500 1 TB for cache
    - HBA: LSI SAS 9300-16i + 1x Fractal Design Silent R3 80mm fan 
- PSU: Corsair RM850e
- Case: Fractal Design Define R6 + 4x Fractal Design Dynamic GP-14 140mm fan

Asus Router RT-AC1200 **(All the important networking done on the ISP provided router)**

Additional hardware I have, but I don't use it (not complete or accurate):
- GPU: Nvidia GeForce 315
- HDD: Seagate Barracuda 1 TB from 2013
- Cables:
  - 1x 10cm SATA cable
  - 1x SATA to eSATA
  - ...

## BIOS configuration

Here are all changes made to the default BIOS configuration:
1. Important for **Homelab**
   - VT-d: Disabled -> Enabled
   - Hyper-Threading Technology: Auto -> Enabled
   - CPU Thermal Monitor: Auto -> Enabled
   - CPU EIST Function: Auto -> Enabled
   - Race To Halt (RTH): Auto -> Enabled
   - Energy Efficient Turbo: Auto -> Enabled
   - Intel(R) Turbo Boost Technology: Auto -> Disabled
   - Intel(R) Dynamic Tuning Technology: Disabled -> Enabled
   - C-States Control: Auto -> Enabled
     - CPU Enhanced Halt(C1E): Auto -> Enabled
     - C6/C7 State Support: Auto -> Enabled
     - C8 State Support: Auto -> Enabled
     - C10 State Support: Auto -> Enabled
     - Package C State Limit: Auto -> C6c
   - Keyboard Wake Up From S3: Enabled -> Disabled
   - Mouse Wake Up From S3: Enabled -> Disabled
   - Power Loading: Auto -> Enabled
   - Preferred Operating Mode: Auto -> Advanced Mode

## Important notes

1. BIOS key: **DEL**
2. Boot order key: **F12**
3. Q-Flash key: **F10**
4. Boot up time longer because of LSI HBA
5. ASPM has to be disabled using GRUB file (path: /etc/default/grub), otherwise NVMe SSDs connected over chipset will be
throwing errors