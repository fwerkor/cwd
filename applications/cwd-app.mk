include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=cwd-app-$(notdir ${CURDIR})
PKG_VERSION:=$(strip $(call findrev))
PKG_RELEASE?=1

define Package/$(PKG_NAME)
  SECTION:=cwd
  CATEGORY:=CWD
  SUBMENU:=Applications
  TITLE:=$(APP_TITLE)
  DEPENDS:=+cwd-core $(APP_DEPENDS)
  PKGARCH:=all
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
