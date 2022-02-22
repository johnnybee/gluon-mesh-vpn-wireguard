include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-mesh-vpn-wireguard
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-mesh-vpn-wireguard
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Support for connecting meshes via wireguard
  DEPENDS:=+gluon-mesh-vpn-core +gluon-config-mode-core +micrond +kmod-gre +kmod-wireguard +wireguard-tools +kmod-udptunnel4 +curl +ca-bundle +ip-full
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-mesh-vpn-wireguard/install
        $(CP) ./files/* $(1)/
endef

define Package/gluon-mesh-vpn-wireguard/postinst
endef

$(eval $(call BuildPackage,gluon-mesh-vpn-wireguard))
