# HP Pavilion 14-dv1xxx Hackintosh

This is an *incomplete* attempt to provide Hackintosh for the HP Pavilion 14-dv1xxx

# Specs

| Model: | HP Pavilion Laptop 14-dv1xxx |
|---------|------------------------------|
|Processor| Intel i5-1155G7 (Tiger Lake) |
|Graphics| Intel Iris Xe |
|RAM| 8 GB |
|Storage| 512 GB Intel Optane H20 NVMe |
|WiFi| Realtek RTL8822CE |
|Audio| Realtek ALC287 |
|Ports|1x HDMI, 2x USB A, 1x USB C |
|BIOS| Insyde F.23 |

# macOS Versions (tested)

- [X] macOS Catalina (10.15.7)
- [X] macOS Big Sur (11.7.10)
- [ ] macOS Monterey (12.7.6)
- [ ] macOS Sequoia (15.3.2)

## Notes

* macOS Monterey and Sequoia fails with `vm_shared_region_start_address() failed`
  (I think this could be graphics related???)

# Working

- [X] Display
- [X] Keyboard
- [X] Audio
- [X] Battery percentage
- [X] All USB ports
- [ ] Graphics acceleration
- [ ] On-board NVMe
- [ ] Trackpad
- [ ] WiFi
- [ ] Bluetooth
- [ ] Action keys (brightness, audio, etc)

## Notes

* The on-board NVMe *would* work - except - HP for some stupid reason
  decided to not include an option to disable Intel VMD in the BIOS
  and since there are no drivers for VMD, macOS can't detect it

* The trackpad would probably work after install (since it is ELAN)
  but since I can't install it I can't do the patching

* I haven't tested audio (since I have no real way to), but since AppleALC
  lists it as a supported codec, it has a good chance of working

* WiFi / bluetooth is completely unsupported

* Action keys would probably also work post-install (?)

* For basic graphics, I used [this](https://github.com/lshbluesky/WhateverGreen)
  of WhateverGreen which includes support for Tiger Lake

# (very limited) BIOS options

### Security

TPM Device: Hidden (or TPM State: Disabled)

### Configuration -> UEFI HII Configuration -> Intel Rapid Storage Technology

Make sure that both devices show 'Non-RAID' under status

### Boot Options

Secure Boot: Disabled (if you don't have custom keys)
