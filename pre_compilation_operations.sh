#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Modify wireless status
sed -i 's/set wireless.${name}.disabled=1/set wireless.${name}.disabled=0/' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify kernel checksum (Deprecated)
# echo 03ba5b5fee47f2232a088e3cd9832aec >> .vermagic
# cat .vermagic
# sed -i '/vermagic/s/.*/  cp $(TOPDIR)\/vermagic $(LINUX_DIR)\/.vermagic/' include/kernel-defaults.mk
# sed -i '/md5/s/.*/  STAMP_BUILT:=$(STAMP_BUILT)_$(shell cat $(LINUX_DIR)\/.vermagic)/' package/kernel/linux/Makefile

# Modify LUCI sources
sed -i  's/downloads.openwrt.org\/releases\/23.05-SNAPSHOT/archive.openwrt.org\/releases\/23.05.4/'  include/version.mk
