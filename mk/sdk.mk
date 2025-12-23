#********************************************************************************
#** SDKDIRS **
#********************************************************************************
SDKDIRS_yes=

SDKDIRS_yes += \
							$(HOMEX_ROOT_DIR) \
							$(HOMEX_BIN_DIR) \
							$(HOMEX_ETC_DIR) \
							$(HOMEX_INC_DIR) \
							$(HOMEX_LIB_DIR) \
							$(HOMEX_OPT_DIR) \
							$(HOMEX_SBIN_DIR) \
							$(HOMEX_USR_BIN_DIR) \
							$(HOMEX_USR_LOCAL_BIN_DIR)

# ${HOMEX_USR_PREFIX_DIR} != ""
SDKDIRS_yes += \
							$(HOMEX_ROOT_DIR)/bin \
							$(HOMEX_ROOT_DIR)/include \
							$(HOMEX_ROOT_DIR)/lib \
							$(HOMEX_ROOT_DIR)/sbin

SDKDIRS_yes += \
							$(HOMEX_IOT_DIR) \
							$(HOMEX_CERT_DIR) \
							$(HOMEX_CONF_DIR) \
							$(HOMEX_HTTPD_DIR) \
							$(HOMEX_HTTPS_DIR) \
							$(HOMEX_MODULES_DIR) \
							$(HOMEX_WWW_DIR)

SDKDIRS_yes += \
							$(SDK_ROOT_DIR) \
							$(SDK_BIN_DIR) \
							$(SDK_ETC_DIR) \
							$(SDK_INC_DIR) \
							$(SDK_LIB_DIR) \
							$(SDK_OPT_DIR) \
							$(SDK_SBIN_DIR) \
							$(SDK_USR_INC_DIR) \
							$(SDK_USR_BIN_DIR) \
							$(SDK_USR_LOCAL_BIN_DIR)

# ${SDK_USR_PREFIX_DIR} != ""
SDKDIRS_yes += \
							$(SDK_ROOT_DIR)/bin \
							$(SDK_ROOT_DIR)/include \
							$(SDK_ROOT_DIR)/lib \
							$(SDK_ROOT_DIR)/sbin

SDKDIRS_yes += \
							$(SDK_IOT_DIR) \
							$(SDK_IOT_CERT_DIR) \
							$(SDK_IOT_CONF_DIR) \
							$(SDK_IOT_HTTPD_DIR) \
							$(SDK_IOT_HTTPS_DIR) \
							$(SDK_IOT_MODULES_DIR) \
							$(SDK_IOT_WWW_DIR)
