PKG_NAME:=cwd-core
PKG_VERSION:=0.9
PKG_MAINTAINER:=FWERKOR Team <admin@fwerkor.com>
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
	URL:=https://github.com/fwerkor/cwd
endef

define Package/$(PKG_NAME)/description
	CapOS Web Desktop Core.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	cp -a ./../files/* $(PKG_BUILD_DIR)/files
	cp ./Makefile $(PKG_BUILD_DIR)/Makefile
	$(Build/Patch)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/cwd
	$(CP) $(PKG_BUILD_DIR)/files/* $(1)/cwd
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
