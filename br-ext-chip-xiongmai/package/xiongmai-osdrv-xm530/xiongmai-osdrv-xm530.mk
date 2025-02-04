################################################################################
#
# xiongmai-osdrv-xm530
#
################################################################################

XIONGMAI_OSDRV_XM530_VERSION =
XIONGMAI_OSDRV_XM530_SITE =
XIONGMAI_OSDRV_XM530_LICENSE = MIT
XIONGMAI_OSDRV_XM530_LICENSE_FILES = LICENSE
XIONGMAI_OSDRV_XM530_INSTALL_STAGING = YES


define XIONGMAI_OSDRV_XM530_INSTALL_STAGING_CMDS
	$(INSTALL) -m 755 -d $(STAGING_DIR)/usr/include/xiongmai
	# $(INSTALL) -m 644 -t $(STAGING_DIR)/usr/include/xiongmai $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/include/*

	# $(INSTALL) -m 755 -d $(BUILD_DIR)/xiongmai-osdrv-xm530/include
	# $(INSTALL) -m 644 -t $(BUILD_DIR)/xiongmai-osdrv-xm530/include $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/include/*

	# $(INSTALL) -m 755 -d $(BUILD_DIR)/xiongmai-osdrv-xm530/kmod
	# $(INSTALL) -m 644 -t $(BUILD_DIR)/xiongmai-osdrv-xm530/kmod $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/kmod/*.ko

	# $(INSTALL) -m 755 -d $(BUILD_DIR)/xiongmai-osdrv-xm530/lib
	# $(INSTALL) -m 644 -t $(BUILD_DIR)/xiongmai-osdrv-xm530/lib $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/lib/*.so
endef


define XIONGMAI_OSDRV_XM530_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/sensors
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/etc/sensors $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/sensor/config/*.ini

	$(INSTALL) -m 755 -d $(TARGET_DIR)/lib/modules/3.10.103+/xiongmai
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/3.10.103+/xiongmai $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/kmod/*.ko
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/3.10.103+/xiongmai $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/kmod/usb/*.ko

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/script/*

	# $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/fonts
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/fonts $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/fonts/*.bin

	# $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/sensors
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/sensors $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/sensor/*.so

	# $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/ $(BR2_EXTERNAL_XIONGMAI_PATH)/package/xiongmai-osdrv-xm530/files/lib/*.so
endef

$(eval $(generic-package))






