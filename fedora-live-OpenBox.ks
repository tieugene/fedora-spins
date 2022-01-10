# fedora-live-OpenBox.ks
#
# Description:
# – Fedora Live Spin with the OpenBox WM
#
# Maintainer(s):
# – TI_Eugene <ti.eugene@gmail.com>
#

%include contrib/fedora-live-base.ks
%include /usr/share/spin-kickstarts/fedora-live-minimization.ks
%include contrib/contrib-openbox.ks

%packages
dracut-config-generic
%end

%post
# add initscript
cat >> /etc/rc.d/init.d/livesys << EOF

# set up autologin for user liveuser
cat > /etc/lightdm/lightdm.conf.d/50-autologin.conf<<FOE
[Seat:*]
type=local
autologin-user=liveuser
autologin-user-timeout=0
autologin-session=openbox
FOE

# tint2 +=jgmenu
sed -i 's/LTSC/PLTSC/' /etc/xdg/tint2/tint2rc
cat >> /etc/xdg/tint2/tint2rc<<FOE
button = new
button_icon = /usr/share/pixmaps/fedora-logo-sprite.png
button_lclick_command = jgmenu_run
FOE

# openbox += tint2
echo "tint2 &" >> /etc/xdg/openbox/autostart

# show liveinst.desktop in menu
sed -i 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop

# no updater applet in live environment
rm -f /etc/xdg/autostart/org.mageia.dnfdragora-updater.desktop

dnf -y remove dracut-config-generic

# make sure to set the right permissions and selinux contexts
chown -R liveuser:liveuser /home/liveuser/
restorecon -R /home/liveuser/

EOF

%end
