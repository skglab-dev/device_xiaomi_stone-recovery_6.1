# device_xiaomi_stone-recovery

Recovery tree for this Xiaomi device
- Xiaomi Redmi _Note 12 5G_ & POCO _X5 5G_ (codename: `sunstone & moonstone`) (August 2025)

## Device specifications

Device                  | Redmi Note 12 5G / Note 12R Pro 5G / POCO X5 5G
:-----------------------|:-------------------------------------
SoC                     | Qualcomm Snapdragon® 695 (SM6375)
Board                   | `holi/blair`
CPU                     | Octa-core (2x2.3 GHz Cortex-A78 & 6x2.0 GHz Cortex-A55)
GPU                     | Adreno 619
Memory                  | 4/6/8/12 GB RAM
Shipped Android Version | 12.0 (MIUI 13)
Storage                 | 128/256 (UFS 2.2)
MicroSD                 | Yes (Hybrid Slot)
Battery                 | Non-removable Li-Po 7000 mAh
Dimensions              | 169.5 x 80.5 x 8.4 mm
Display                 | 6.9" FHD+ Super Amoled Display, 120Hz, 1080x2400

## Checklist
- [n] ADB
- [n] Decryption
- [n] Touchscreen
- [n] FastbootD
- [n] Flashing
- [n] MTP
- [n] Sideload
- [n] Backups
- [n] Filesystems/Mounts
- [n] Slot switch
- [n] Haptics
- [n] Flashlight
- [n] Custom splash

## Notes
This device does not have a eSIM, meaning that instead of using Secure Element/StrongBox for decryption, 
TEE is used instead

```
vendor.gatekeeper.disable_spu=true
vendor.gatekeeper.is_security_level_spu=0
```

## How to build
This recovery tree was initially made for `stone`. For historical purposes,
build the `twrp_stone` target

```shell
lunch twrp_stone-ap2a-eng && mka adbd recoveryimage
```
