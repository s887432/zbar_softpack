# ----------------------------------------------------------------------------
#         SAM Software Package License
# ----------------------------------------------------------------------------
# Copyright (c) 2015, Atmel Corporation
#
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# - Redistributions of source code must retain the above copyright notice,
# this list of conditions and the disclaimer below.
#
# Atmel's name may not be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# DISCLAIMER: THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
# OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# ----------------------------------------------------------------------------

# Makefile for compiling the USART DMA example
AVAILABLE_TARGETS = sama5d2-xplained sama5d27-som1-ek sam9x60-ek 

AVAILABLE_VARIANTS = ddram

VARIANT ?= ddram

TOP := ../..

BINNAME = zbar_test

CFLAGS_INC += -I.
CFLAGS_INC += -I./zbar
CFLAGS_INC += -I./include
CFLAGS_INC += -I./include/zbar


obj-y += examples/zbar_test/main.o

obj-y += examples/zbar_test/zbar/decoder/code39.o
obj-y += examples/zbar_test/zbar/decoder/code93.o 
obj-y += examples/zbar_test/zbar/decoder/code128.o 
obj-y += examples/zbar_test/zbar/decoder/ean.o
obj-y += examples/zbar_test/zbar/decoder/i25.o 
obj-y += examples/zbar_test/zbar/decoder/qr_finder.o
obj-y += examples/zbar_test/zbar/decoder/databar.o
obj-y += examples/zbar_test/zbar/decoder/codabar.o 
obj-y += examples/zbar_test/zbar/decoder/sq_finder.o

obj-y += examples/zbar_test/zbar/qrcode/bch15_5.o
obj-y += examples/zbar_test/zbar/qrcode/binarize.o 
obj-y += examples/zbar_test/zbar/qrcode/isaac.o 
obj-y += examples/zbar_test/zbar/qrcode/qrdec.o 
obj-y += examples/zbar_test/zbar/qrcode/rs.o
obj-y += examples/zbar_test/zbar/qrcode/util.o 
obj-y += examples/zbar_test/zbar/qrcode/qrdectxt.o

obj-y += examples/zbar_test/zbar/config.o
obj-y += examples/zbar_test/zbar/decoder.o 
obj-y += examples/zbar_test/zbar/error.o 
obj-y += examples/zbar_test/zbar/image.o 
obj-y += examples/zbar_test/zbar/img_scanner.o
obj-y += examples/zbar_test/zbar/refcnt.o
obj-y += examples/zbar_test/zbar/scanner.o 
obj-y += examples/zbar_test/zbar/symbol.o
obj-y += examples/zbar_test/zbar/sqcode.o 

include $(TOP)/scripts/Makefile.rules
