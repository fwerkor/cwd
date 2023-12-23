PKG_NAME:=cwd-core
PKG_RELEASE:=$(COMMITCOUNT)
PKG_VERSION:=0.9
PKG_MAINTAINER:=FWERKOR Team

PKG_DEPENDS:=+uhttpd
PKG_FILE_DEPENDS:=$(PLATFORM_DIR)/ $(GENERIC_PLATFORM_DIR)/$(PKG_NAME)/

PKG_INSTALL_DIR:=$(PKG_BUILD_DIR)/root-$(ARCH)

PKG_FILES := ../files/*
PKG_FILE_PATHS:=/cwd

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=cwd
  CATEGORY:=CWD
  TITLE:=$(PKG_NAME)
  DEPENDS:=$(PKG_DEPENDS)
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
	$(INSTALL_DIR) $$(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(PKG_NAME) $$(1)/usr/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
