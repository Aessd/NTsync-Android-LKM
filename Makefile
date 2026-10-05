# SPDX-License-Identifier: GPL-2.0-only

obj-m += drivers/misc/ntsync.o

ccflags-y += -I$(src)/include