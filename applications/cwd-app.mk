include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/version.mk
include $(INCLUDE_DIR)/feeds.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=cwd-app-$(APP_NAME)
PKG_VERSION:=$(APP_VERSION)
PKG_RELEASE?=1
PKG_DESCRIPTION:=$(APP_DESCRIPTION)

define Package/$(PKG_NAME)
  SECTION:=cwd
  CATEGORY:=CWD
  SUBMENU:=Applications
  TITLE:=$(PKG_NAME)
  DEPENDS:=+cwd-core $(APP_DEPENDS)
  PKGARCH:=all
  VERSION:=$(PKG_VERSION)
endef

define Package/$(PKG_NAME)/description
  $(PKG_DESCRIPTION)
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
	$(INSTALL_DIR) $$(1)/cwd/www/cwd/app
	$(CP) $(PKG_BUILD_DIR)/htdoc/* $$(1)/cwd/www/cwd/app/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
