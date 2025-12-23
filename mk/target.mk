MAKEFILE_X86_LIST=x86_64 x86 i686 i386
ifeq (,$(filter $(PJ_TARGET),$(MAKEFILE_X86_LIST)))
MAKEFILE_FILE=Makefile.$(PJ_TARGET)
else
MAKEFILE_FILE=Makefile.x86
endif

.DEFAULT_GOAL = all

# .install->.all->.configured->.patched->.unpack
.PHONY: all clean distclean install romfs up

.buildno:
	date +%s > $@

.all:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) all && touch $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) all)"

all: .buildno .all

clean:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"
	@rm -f .buildno
	@rm -f .all
	@rm -f .install

distclean:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"
	@rm -f .all
	@rm -f .buildno
	@rm -f .configured
	@rm -f .install
	@rm -f .cmake
	@rm -f .patched
	@rm -f .unpack

.install: .all
	touch $@

install: .install
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"

romfs: .install
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"

up:
	@svn up

.unpack:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"

.patched:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"

.configured:
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"

deb: .all
	@[ -f $(MAKEFILE_FILE) ] && echo ">> make $@ (`pwd`)" && make -f $(MAKEFILE_FILE) $@ || echo "Not Found $(MAKEFILE_FILE) !!! (`pwd`, make -f $(MAKEFILE_FILE) $@)"
