#********************************************************************************
#** svn-external **
#********************************************************************************

distclean-svn-external:
	@echo '>> $@'
ifeq ("$(PJ_HAS_UNIFYX)", "no")
	$(PJ_SH_RMDIR) $(PJ_UNIFYX_DIR)
endif
ifeq ("$(PJ_HAS_MATTER)", "no")
	$(PJ_SH_RMDIR) $(PJ_USR_VENDOR_MATTERX_DIR)
endif
	$(PJ_SH_RM) .svn_external

.svn_external:
ifeq ("$(PJ_HAS_UNIFYX)", "yes")
	if [ -d $(PJ_UNIFYX_DIR) ]; then \
		svn up; \
	else \
		cd $(PJ_UNIFYX_DIR)/.. && svn co http://trac-vbx/svnunify/trunk/UnifyX; \
	fi
endif
ifeq ("$(PJ_HAS_MATTER)", "yes")
	if [ -d $(PJ_USR_VENDOR_MATTERX_DIR) ]; then \
		svn up; \
	else \
		cd $(PJ_USR_VENDOR_MATTERX_DIR)/.. && svn co https://trac-vbx/svnmatter/trunk/MatterX; \
	fi
endif
	touch $@