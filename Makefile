# SPDX-License-Identifier: GPL-2.0-only

obj-m += drivers/misc/ntsync.o

ccflags-y += -I$(src)/include

# Kernel source and output directories can be overridden from the command line.
KDIR ?=
OUT ?= $(KDIR)/out
LLVM ?= 1
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) O=$(OUT) M=$(PWD) LLVM=$(LLVM) modules

clean:
	$(MAKE) -C $(KDIR) O=$(OUT) M=$(PWD) LLVM=$(LLVM) clean