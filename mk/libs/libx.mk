#********************************************************************************
#** LIBX **
#********************************************************************************
LIBX_yes=

#** tools (utilx9) **
LIBX_$(PJ_HAS_UTILX9) += $(PJ_LIBS_DIR)/utilx9
LIBS_CHECK_$(PJ_HAS_UTILX9) += $(SDK_LIB_DIR)/libutilx9.so

#** tools (beeX/mctt) **
LIBX_$(PJ_HAS_BEEX) += $(PJ_LIBS_DIR)/beeX
LIBS_CHECK_$(PJ_HAS_BEEX) += $(SDK_LIB_DIR)/libbeex.so

#** tools (hornetx/mqtt) **
LIBX_$(PJ_HAS_HORNETX) += $(PJ_LIBS_DIR)/hornetx
LIBS_CHECK_$(PJ_HAS_HORNETX) += $(SDK_LIB_DIR)/libhornetx.so
LIBX_$(PJ_HAS_HONEYX) += $(PJ_LIBS_DIR)/honeyx
LIBS_CHECK_$(PJ_HAS_HONEYX) += $(SDK_LIB_DIR)/libhoneyx.so