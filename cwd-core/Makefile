PKG_NAME:=cwd-core
PKG_RELEASE:=$(COMMITCOUNT)
PKG_VERSION:=0.9
PKG_MAINTAINER:=FWERKOR Team
PKG_ARCH:=all
PKG_DEPENDS:=+uhttpd +libustream-mbedtls +px5g-mbedtls

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/version.mk
include $(INCLUDE_DIR)/feeds.mk
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=cwd
  CATEGORY:=CWD
  TITLE:=$(PKG_NAME)
  DEPENDS:=$(PKG_DEPENDS)
  PKGARCH:=$(PKG_ARCH)
endef

define Package/$(PKG_NAME)/description
  CapOS Web Desktop Core.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

define Build/Compile
	$(call Build/Compile/Default)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $$(1)/cwd
	$(CP) $(PKG_BUILD_DIR)/../files/* $$(1)/cwd/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
