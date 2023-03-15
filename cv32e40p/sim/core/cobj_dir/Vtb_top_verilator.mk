# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Makefile for building Verilated archive or executable
#
# Execute this makefile from the object directory:
#    make -f Vtb_top_verilator.mk

default: Vtb_top_verilator

### Constants...
# Perl executable (from $PERL)
PERL = perl
# Path to Verilator kit (from $VERILATOR_ROOT)
VERILATOR_ROOT = /11tools/VERILATOR
# SystemC include directory with systemc.h (from $SYSTEMC_INCLUDE)
SYSTEMC_INCLUDE ?= /11users/vanoai/workspace/risc_v/biriscv/tb/systemc/systemc_setup/include
# SystemC library directory with libsystemc.a (from $SYSTEMC_LIBDIR)
SYSTEMC_LIBDIR ?= /11users/vanoai/workspace/risc_v/biriscv/tb/systemc/systemc_setup/lib-linux64

### Switches...
# SystemC output mode?  0/1 (from --sc)
VM_SC = 0
# Legacy or SystemC output mode?  0/1 (from --sc)
VM_SP_OR_SC = $(VM_SC)
# Deprecated
VM_PCLI = 1
# Deprecated: SystemC architecture to find link library path (from $SYSTEMC_ARCH)
VM_SC_TARGET_ARCH = linux

### Vars...
# Design prefix (from --prefix)
VM_PREFIX = Vtb_top_verilator
# Module prefix (from --prefix)
VM_MODPREFIX = Vtb_top_verilator
# User CFLAGS (from -CFLAGS on Verilator command line)
VM_USER_CFLAGS = \
	-std=gnu++11 -O2 -DVCD_TRACE \

# User LDLIBS (from -LDFLAGS on Verilator command line)
VM_USER_LDLIBS = \

# User .cpp files (from .cpp's on Verilator command line)
VM_USER_CLASSES = \
	tb_top_verilator \

# User .cpp directories (from .cpp's on Verilator command line)
VM_USER_DIR = \
	/11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core \


### Default rules...
# Include list of all generated classes
include Vtb_top_verilator_classes.mk
# Include global rules
include $(VERILATOR_ROOT)/include/verilated.mk

### Executable rules... (from --exe)
VPATH += $(VM_USER_DIR)

tb_top_verilator.o: /11users/vanoai/workspace/risc_v/oai_test_cva6_p/core-v-verif/cv32e40p/tb/core/tb_top_verilator.cpp
	$(OBJCACHE) $(CXX) $(CXXFLAGS) $(CPPFLAGS) $(OPT_FAST) -c -o $@ $<

### Link rules... (from --exe)
Vtb_top_verilator: $(VK_USER_OBJS) $(VK_GLOBAL_OBJS) $(VM_PREFIX)__ALL.a $(VM_HIER_LIBS)
	$(LINK) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) $(LIBS) $(SC_LIBS) -o $@


# Verilated -*- Makefile -*-
