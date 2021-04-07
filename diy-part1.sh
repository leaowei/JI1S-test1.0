#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
git clone https://github.com/jefferymvp/luci-app-koolproxyR.git package/lean/luci-app-koolproxyR
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/lean/luci-app-adguardhome
git clone https://github.com/Lienol/openwrt-OpenAppFilter.git package/lean/openwrt-OpenAppFilter
git clone https://github.com/garypang13/luci-app-eqos.git package/lean/luci-app-eqos
git clone https://github.com/vernesong/OpenClash.git package/lean/openclash
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
