include $(TOPDIR)/rules.mk

PKG_NAME:=dns-tcp2udp
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/nomis/dns-tcp2udp.git
PKG_SOURCE_VERSION:=4673b413296d2a1e46902c5d06743f63b91826dc
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(PKG_SOURCE_SUBDIR)

PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=w311ang

include $(INCLUDE_DIR)/package.mk

define Package/dns-tcp2udp
	SECTION:=net
	CATEGORY:=Network
	TITLE:=DNS TCP to UDP proxy
	URL:=https://github.com/nomis/dns-tcp2udp
endef

define Package/dns-tcp2udp/description
DNS TCP to UDP proxy
endef

define Package/dns-tcp2udp/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/dns-tcp2udp $(1)/usr/bin
endef

$(eval $(call BuildPackage,dns-tcp2udp))
