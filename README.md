# NTsync Android LKM

Android Linux Kernel Module for NTsync.

> **Note:** Only Android 14 / GKI 6.1 has been tested on an actual device.
> The other versions have only been build-tested and have not been tested on real devices.

## Compatibility

| KMI            | Build | Device Tested |
| -------------- | :---: | :-----------: |
| android13-5.10 |   ✓   |       ✗       |
| android14-5.15 |   ✓   |       ✗       |
| android14-6.1  |   ✓   |       ✓       |
| android15-6.6  |   ✓   |       ✗       |
| android16-6.12 |   ✓   |       ✗       |

## Requirements

The kernel must have Kprobes support enabled:

```text
CONFIG_KPROBES=y
CONFIG_HAVE_KPROBES=y
CONFIG_HAVE_KRETPROBES=y
```
## Usage

For example, for Android 14 / GKI 6.1:

```text
ntsync-android14-6.1.ko
```

Load the module as root:

```bash
su
insmod ntsync-android14-6.1.ko
```

Check if the module is loaded:

```bash
lsmod | grep ntsync
```

Check the device node:

```bash
ls -l /dev/ntsync
```

If `/dev/ntsync` exists, the module has been loaded successfully.
