include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-mesh-vpn-wireguard
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(TOPDIR)/../package/gluon.mk

define Package/gluon-mesh-vpn-wireguard
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Support for connecting meshes via wireguard
  DEPENDS:=gluon-config-mode-core-virtual +gluon-mesh-vpn-core +gluon-core +micrond +kmod-gre +kmod-gre6 +ip-full +kmod-wireguard +wireguard-tools +kmod-udptunnel6 +kmod-udptunnel4 +kmod-ipt-hashlimit +curl +ca-bundle
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,gluon-mesh-vpn-wireguard,i18n)
endef

define Package/gluon-mesh-vpn-wireguard/install
	$(CP) ./files/* $(1)/
	$(call GluonInstallI18N,gluon-mesh-vpn-wireguard,$(1))
endef

define Package/gluon-mesh-vpn-wireguard/postinst
endef

$(eval $(call BuildPackage,gluon-mesh-vpn-wireguard))
