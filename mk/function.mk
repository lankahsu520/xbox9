
define print_env
	@echo "$(1) - $(2)"
endef

#$(call print_obj, $(LIB), ok, error )
define print_obj
	test -e $(1) && echo -n " " && wc -c $(1) | sed 's/ / - /g' || echo "$(3) - $(1)"
endef

.PHONY: all check list printenv up
all:

# make skip=1 check 
check:
	@echo "********************************************************************************"
	@echo "** Library $(SKIP) **"
	@echo "********************************************************************************"
	@for idx in $(LIBS_CHECK_yes); do \
		$(call print_obj, $$idx, ok, error ); \
	done
ifneq ("$(SKIP)", "")
	@for idx in $(LIBS_CHECK_no); do \
		$(call print_obj, $$idx, ok, skip ); \
	done
endif
	@echo
	@echo "********************************************************************************"
	@echo "** Binary **"
	@echo "********************************************************************************"
	@for idx in $(BINS_CHECK_yes); do \
		$(call print_obj, $$idx, ok, error ); \
	done
ifneq ("$(SKIP)", "")
	@for idx in $(BINS_CHECK_no); do \
		$(call print_obj, $$idx, ok, skip ); \
	done
endif
	@echo

list:
	@ls --color=auto -al $(SDK_LIB_DIR)

up:
	for subdir in $(UPDIRS_ALL); do \
		[ -d "$$subdir" ] && (make -C $$subdir $@;) || echo "skip !!! ($$subdir)"; \
	done

printenv:
	@echo "********************************************************************************"
	@echo "** ENV **"
	@echo "********************************************************************************"
	@echo "** Target **"
	$(call print_env, PJ_TOOLCHAIN_NAME, $(PJ_TOOLCHAIN_NAME) )
	$(call print_env, PJ_TOOLCHAIN_DIR, $(PJ_TOOLCHAIN_DIR) )
	$(call print_env, STAGING_DIR, $(STAGING_DIR) )
	$(call print_env, PJ_HOST, $(PJ_HOST) )
	$(call print_env, PJ_ARCH, $(PJ_ARCH) )

	@echo
	@echo "** Folder **"
	$(call print_env, PJ_ROOT_DIR, $(PJ_ROOT_DIR) )
	$(call print_env, PJ_PREFIX_DIR, $(PJ_PREFIX_DIR) )
	$(call print_env, SDK_ROOT_DIR, $(SDK_ROOT_DIR) )
	$(call print_env, HOMEX_ROOT_DIR, $(HOMEX_ROOT_DIR) )
	@echo
	@echo "** Config **"
	@cat $(CONFIG_CUSTOMER) | grep PJ_
	@echo
