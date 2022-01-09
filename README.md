# Fedora Spins

Fedora hand-made spins

## Requirements:
- pykickstart
- spin-kickstarts
- lorax-lmc-novirt

## Workflow

1. Check:

   ```bash
   ksvalidator fedora-live-lxqt-lt.ks
   ```

1. Flatten:

   ```bash
   ksflatten -v, --config fedora-live-lxqt-lt.ks -o flat-fedora-live-lxqt-lt.ks --version F35
   ```

1. Create ISO:

   ```bash
   rmdir /mnt/shares/tmp/ks
   sudo livemedia-creator --ks flat-fedora-live-lxqt-lt.ks --no-virt --resultdir /mnt/shares/tmp/ks --project Fedora-LXQT-Lt-Live --make-iso --volid Fedora-LXQT-Lt-35 --iso-only --iso-name F35-LXQT-Lt-x86_64.iso --releasever 35 --macboot
   ```
