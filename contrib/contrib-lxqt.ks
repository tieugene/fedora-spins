# contrib-lxqt.ks
#

%include /usr/share/spin-kickstarts/fedora-lxqt-common.ks

%packages

%include contrib-all-add.ks
%include contrib-all-del.ks

-sddm
-sddm-themes
-enki
-transmission-*
-google-non-cjk-fonts-common
-virtualbox-guest-additions
-words

%end
