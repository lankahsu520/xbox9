.EXPORT_ALL_VARIABLES:

PWD=$(shell pwd)
-include $(SDK_CONFIG_CONFIG)

include $(PJ_MK_USER_COMMON)
include $(PJ_MK_USER_CUSTOMER)
include $(PJ_MK_USER_IOT)
include $(PJ_MK_USER_VENDOR)

include $(PJ_MK_ROMFS)

USERDIRS_yes = $(USER_COMMONDIRS_yes) $(USER_VENDORDIRS_yes) $(USER_CUSTOMERDIRS_yes) $(USER_IOTDIRS_yes)
USERDIRS_no = $(USER_COMMONDIRS_no) $(USER_VENDORDIRS_no) $(USER_CUSTOMERDIRS_no) $(USER_IOTDIRS_no)

#********************************************************************************
#** All **
#********************************************************************************
.PHONY: all clean distclean install romfs
all: install

clean:
	for subdir in $(USERDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

distclean: clean
	for subdir in $(USERDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

install:
	for subdir in $(USERDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

romfs: install
ifneq ("$(HOMEX_ROOT_DIR)", "")
	for subdir in $(ROMFSDIRS_USER_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done
endif

.PHONY: meson meson_install
meson:
	for subdir in $(USERDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

meson_install:
	for subdir in $(USERDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done
