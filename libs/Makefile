include $(PJ_MK_FUNCTION)

# LIBDIRS_yes
include $(PJ_MK_LIBS)
# LIBX_yes
include $(PJ_MK_LIBX)

#** ROMFSDIRS (cp XXX to /romfs) **
# ROMFSDIRS_yes
include $(PJ_USER_MK_ROMFS)

APPSDIRS_yes = $(LIBX_yes)
APPSDIRS_no = $(LIBX_no)

#** make up **
UPDIRS_ALL = $(LIBDIRS_yes) $(LIBDIRS_no) $(APPSDIRS_yes) $(APPSDIRS_no)

#** make distclean **
CLEANDIRS_ALL = $(UPDIRS_ALL)

.PHONY: all clean distclean compile install romfs
all: compile

clean:
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

distclean:
	for subdir in $(CLEANDIRS_ALL); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done
	rm -f .lib
	rm -f .apps .apps_clean

../.include:
	make -C ../ .include

.lib: ../.include
	for subdir in  $(LIBDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir install;) || echo "skip !!! ($$subdir)"; \
	done
	touch $@

.apps_clean: .lib
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir distclean;) || echo "skip !!! ($$subdir)"; \
	done
	touch $@

.apps: .apps_clean
	for subdir in $(APPSDIRS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir install;) || echo "skip !!! ($$subdir)"; \
	done
	touch $@

compile: .apps printenv check

install: all

romfs: install
ifneq ("$(HOMEX_ROOT_DIR)", "")
	for subdir in $(ROMFSDIRS_LIBS_yes); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done
endif
