#!/bin/sh
LABEL=IceWM
STAMP=$(date +%y%m%d%H%M)
OUTDIR=/mnt/ssd/ks
[ -d $OUTDIR ] && (sudo rm $OUTDIR/*; sudo rmdir $OUTDIR)
sudo livemedia-creator --ks flat/fedora-live-$LABEL.ks --no-virt --resultdir $OUTDIR --project Fedora-$LABEL-Live --make-iso --volid Fedora-$LABEL-35 --iso-only --iso-name F35-$LABEL-x86_64-$STAMP.iso --releasever 35 --macboot
