include $(PJ_MK_REVISION)
include $(PJ_MK_FUNCTION)
include $(PJ_MK_SVN_EXTERNAL)

.configured:
	rm -f $(CONFIG_CUSTOMER_DEF_H)
	rm -f $(CONFIG_CUSTOMER)
	rm -f $(SDK_CONFIG_CUSTOMER_DEF_H)
	rm -f $(SDK_CONFIG_CUSTOMER)
	$(PJ_SH_CUSTOMER2DEF)
	$(PJ_SH_SED) "s|#define UBUS_UNIX_SOCKET_EX.*|#define UBUS_UNIX_SOCKET_EX \"$(PJ_UBUS_ADDR)\"|g" $(PJ_ROOT_DIR)/include/ubus_def.h
	touch $@
