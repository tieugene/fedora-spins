# contrib-lxqt.ks
#

%include /usr/share/spin-kickstarts/fedora-lxqt-common.ks
%include contrib-all.ks

%packages

-sddm
-sddm-themes
-enki
-transmission-*
-google-non-cjk-fonts-common
-virtualbox-guest-additions
-words

%end
