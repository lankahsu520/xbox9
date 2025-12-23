.EXPORT_ALL_VARIABLES:

include $(CONFIG_CONFIG)
include $(PJ_MK_DEFINE)

#********************************************************************************
#** CFLAGS &  LDFLAGS **
#********************************************************************************
#CFLAGS += "-Wno-format-overflow"
#CFLAGS += "-Wno-format-truncation"
#CFLAGS += "-Wno-unused-variable"
#CFLAGS += "-Wno-unused-result"

#********************************************************************************
#** LIBC **
#********************************************************************************
LIBC_INSTALL_$(PJ_HAS_GLIBC) += $(PJ_PREFIX_GLIBC_DIR)
LIBC_INSTALL_$(PJ_HAS_UCLIBC) += $(PJ_PREFIX_UCLIBC_DIR)

#********************************************************************************
#** CLEANDIRS **
#********************************************************************************
LIBS_CHECK_yes = 
BINS_CHECK_yes =

# LIBDIRS_yes
include $(PJ_MK_LIBS)
# PLATFORMS_yes
include $(PJ_MK_PLATFORM)
# LIBX_yes
include $(PJ_MK_LIBX)

# USER_COMMONDIRS_yes
include $(PJ_MK_USER_COMMON)
# USER_CUSTOMERDIRS_yes
include $(PJ_MK_USER_CUSTOMER)
#CUSTOMER_MKS := $(wildcard $(PJ_MK_DIR)/user/customer/*.mk)
#include $(CUSTOMER_MKS)
# USER_IOTDIRS_yes
include $(PJ_MK_USER_IOT)
# USER_VENDORDIRS_yes
include $(PJ_MK_USER_VENDOR)
#VENDOR_MKS := $(wildcard $(PJ_MK_DIR)/user/vendor/*.mk)
#include $(VENDOR_MKS)

# KERNELDIR_yes
include $(PJ_MK_KERNEL)

#** ROMFSDIRS (cp XXX to /romfs) **
# ROMFSDIRS_yes
include $(PJ_MK_ROMFS)

APPSDIRS_yes = $(PLATFORMS_yes) $(LIBX_yes) $(USER_COMMONDIRS_yes) $(USER_VENDORDIRS_yes) $(USER_CUSTOMERDIRS_yes) $(KERNELDIR_yes) $(USER_IOTDIRS_yes)
APPSDIRS_no = $(PLATFORMS_no) $(LIBX_no) $(USER_COMMONDIRS_no) $(USER_VENDORDIRS_no) $(USER_CUSTOMERDIRS_no) $(KERNELDIR_no) $(USER_IOTDIRS_no)

#** make up **
UPDIRS_ALL = $(LIBDIRS_yes) $(LIBDIRS_no) $(APPSDIRS_yes) $(APPSDIRS_no)

#** make distclean **
CLEANDIRS_ALL = $(UPDIRS_ALL)

#** make purge **
PURGEDIRS_ALL = $(LIBDIRS_no) $(APPSDIRS_no)

# SDKDIRS_yes
include $(PJ_MK_SDK)

#REPOSITORY=$(shell svn info | grep 'Repository Root' | cut -d' ' -f3)

ifeq ("$(PJ_ROOT_DIR)", "")
ifeq ("$(wildcard .project)","")
$(error PJ_ROOT_DIR is NULL !!!, please run ". ./confs/???.conf")
else
$(error PJ_ROOT_DIR is NULL !!!, please run ". project.sh")
endif
endif

ifeq ($(PJ_VENV),yes)
ifeq ($(wildcard .venv),)
$(error Not Found .venv !!!, please run ". ./confs/???.conf")
endif
endif

#********************************************************************************
#** All **
#********************************************************************************
# all -> compile -> .user
# -> .apps (.apps_clean), .special 
# -> .lib -> .include
# -> .folder, .kernel_unpack -> .project -> .configured

.DEFAULT_GOAL = all

.PHONY: all clean distclean compile install romfs purge s2_install home_install home_restore target_install
all: compile

clean:
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "Not Found $$subdir !!!"; \
	done
	$(PJ_SH_RM) .apps .user .include .configured

distclean: distclean-svn-external
	for subdir in $(CLEANDIRS_ALL); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "Not Found $$subdir !!!"; \
	done
	[ -d "$(PJ_PREFIX_DIR)" ] && ($(PJ_SH_RMDIR) $(PJ_PREFIX_DIR) $(PJ_PREFIX_GLIBC_DIR) $(SDK_ROOT_DIR);) || echo "Not Found $(PJ_PREFIX_DIR) !!!"
	[ -d ".venv" ] && ($(PJ_SH_RMDIR) .venv) || echo "Not Found .venv !!!"
	$(PJ_SH_RM) include/config_common
	$(PJ_SH_RM) include/autoconf_common.h
	$(PJ_SH_RM) .lib .include .folder .project .configured .kernel_unpack
	$(PJ_SH_RM) .user .apps .apps_clean .special
	$(PJ_SH_RM) .target $(SDK_CONFIG_AUTOCONF_H) $(SDK_CONFIG_CONFIG) $(CONFIG_CUSTOMER_DEF_H) $(CONFIG_CUSTOMER) $(CONFIG_CUSTOMER).export $(CONFIG_MESON) $(SDK_CONFIG_CUSTOMER_DEF_H) $(SDK_CONFIG_CUSTOMER)

.project: .configured
	echo "$(PJ_NAME)" > .project

.folder: .project
	for subdir in $(LIBC_INSTALL_yes); do \
		$(PJ_SH_MKDIR) $$subdir; \
	done
	for subdir in $(SDKDIRS_yes); do \
		$(PJ_SH_MKDIR) $$subdir; \
	done
	pwd > $@
	#touch $@

.kernel_unpack:
ifeq ("$(PJ_HAS_LINUX_KERNEL)", "yes")
	make -C kernel .prepare
endif
	touch $@

.include: .folder .kernel_unpack .svn_external
	$(PJ_SH_CP) $(CONFIG_AUTOCONF_H) include/
	$(PJ_SH_CP) $(CONFIG_CONFIG) include/
	$(PJ_SH_CP) include/* $(SDK_INC_DIR)
ifeq ("$(PJ_NAME)", "mtk5350")
	$(PJ_SH_CP) include/linux/netlink.h $(PJ_TOOLCHAIN_DIR)/../include/linux/
endif
	touch $@

#.npm:
#ifneq "$(wildcard $(PJ_USR_NPM_DIR) )" ""
#	cd $(PJ_USR_NPM_DIR); svn up
#else
#	cd user;svn co $(REPOSITORY)/trunk/npm
#endif
#	touch $@

.lib: .include
	for subdir in $(LIBDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir install;) || echo "Not Found $$subdir !!!"; \
	done
	touch $@

.apps_clean: .lib
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir distclean;) || echo "Not Found $$subdir !!!"; \
	done
	touch $@

.apps: .apps_clean
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir install;) || echo "Not Found $$subdir !!!"; \
	done
	touch $@

.special:
	@echo "********************************************************************************"
	@echo "** Special **"
	@echo "********************************************************************************"
ifneq ("$(findstring eglibc_gcc464,$(PJ_TOOLCHAIN_NAME))", "")
	@$(PJ_SH_CP) $(PJ_TOOLCHAIN_DIR)/../mipsel-buildroot-linux-gnu/sysroot/lib/libnsl* $(SDK_LIB_DIR)
endif
ifneq ("$(findstring uclibc_gcc463,$(PJ_TOOLCHAIN_NAME))", "")
	@$(PJ_SH_CP) $(PJ_TOOLCHAIN_DIR)/../mipsel-buildroot-linux-uclibc/sysroot/lib/libnsl* $(SDK_LIB_DIR)
endif
	@echo
	touch $@

.user: .apps .special
	if [ -d "$(PJ_USR_DIR)" ]; then \
		make -C $(PJ_USR_DIR) install; \
	fi
	#for subdir in $(USER_COMMONDIRS_yes); do \
	#	make -C $$subdir; \
	#	make -C $$subdir install; \
	#done
	touch $@

compile: .user printenv check

install: all

romfs: install
ifneq ("$(HOMEX_ROOT_DIR)", "")
	#** include **
	#$(PJ_SH_CP) include/* $(HOMEX_INC_DIR)/
	$(PJ_SH_CP) include/customer_def.h $(HOMEX_INC_DIR)/

	for subdir in $(ROMFSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "Not Found $$subdir !!!"; \
	done

	$(STRIP) $(HOMEX_BIN_DIR)/* 2>/dev/null; true
	$(PJ_SH_RM) $(HOMEX_LIB_DIR)/*.a
	$(STRIP) $(HOMEX_LIB_DIR)/*.so 2>/dev/null; true
	$(STRIP) $(HOMEX_MODULES_DIR)/* 2>/dev/null; true
endif

s2_install:
ifneq ("$(PJ_PREFIX_S2_DIR)", "")
	$(PJ_SH_MKDIR) $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(SDK_ROOT_DIR)/$(PJ_ZWAVE_OPT)/* $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(SDK_LIB_DIR)/libssl.so* $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(SDK_LIB_DIR)/libcrypto*.* $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(SDK_LIB_DIR)/libusb*.* $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_RM) $(PJ_PREFIX_S2_DIR)/libusb*.a
	$(PJ_SH_RM) $(PJ_PREFIX_S2_DIR)/libusb*.la
	$(PJ_SH_CP) $(SDK_LIB_DIR)/libuv.so.* $(PJ_PREFIX_S2_DIR)
	#$(PJ_SH_CP) $(SDK_LIB_DIR)/libmxml.so* $(PJ_PREFIX_S2_DIR)
	#$(PJ_SH_CP) $(SDK_LIB_DIR)/libjansson.so* $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(PJ_USR_VENDOR_DIR)/ZWave/x86/set_x86.sh $(PJ_PREFIX_S2_DIR)
	$(PJ_SH_CP) $(SDK_LIB_DIR)/libutilx9.so $(PJ_PREFIX_S2_DIR)
endif

home_install:
	@for subdir in $(APPSDIRS_yes); do \
		echo "=> $$subdir !!!!"; \
		make -C $$subdir $@ ; \
		echo -n ""; \
	done

home_restore:
	@for subdir in $(APPSDIRS_yes); do \
		echo "=> $$subdir !!!!"; \
		make -C $$subdir $@ ; \
		echo -n ""; \
	done

purge:
	@for subdir in $(PURGEDIRS_ALL); do \
		echo "$(PJ_SH_RMDIR) $$subdir !!!!"; \
		$(PJ_SH_RMDIR) $$subdir ; \
	done
	#$(PJ_SH_RM) .svn

target_install:
ifneq "$(wildcard $(HOMEX_ROOT_DIR) )" ""
ifneq ("$(PJ_TARGET_DIR)", "")
	$(PJ_SH_MKDIR) $(PJ_TARGET_DIR)
	(cd $(PJ_TARGET_DIR); $(PJ_SH_RMDIR) *)
	$(PJ_SH_CP) $(HOMEX_ROOT_DIR)/* $(PJ_TARGET_DIR)
endif
endif
