# contrib-all.ks
#

%include fedora-repo-rpmfusion.ks

%packages

# to del
-flatpak
-flatpak-selinux
-geolite2-city
-onboard
-yum
# uncomment if no rpmfussion
#-glibc-devel
#-tracker

# to add
slick-greeter
mc
rpmreaper
# - rpmfusion
rpmfusion-free-release
rpmfusion-nonfree-release
akmod-wl
mpv

%end
