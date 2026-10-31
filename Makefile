include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-tcpdump
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-tcpdump
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Applications
  TITLE:=TCP traffic capture interface
  DEPENDS:=+luci-base +tcpdump
endef

define Package/luci-app-tcpdump/description
 LuCI web interface for starting and managing tcpdump packet captures.
endef

PKGARCH:=all

define Build/Compile
endef

define Package/luci-app-tcpdump/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./luasrc/controller/tcpdump.lua $(1)/usr/lib/lua/luci/controller/tcpdump.lua
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	$(INSTALL_DATA) ./luasrc/view/tcpdump.htm $(1)/usr/lib/lua/luci/view/tcpdump.htm
endef

$(eval $(call BuildPackage,luci-app-tcpdump))
