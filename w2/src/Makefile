#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <Put a description of the supported targets here>
#
# Platform Overrides:
#      <Put a description of the supported Overrides here
#
#------------------------------------------------------------------------------
include sources.mk

TARGET = c1m2

# Platform Overrides
ifeq ($(PLATFORM), MSP432)
 CC = arm-none-eabi-gcc
 LD = arm-none-eabi-ld
 CPU = cortex-m4
 ARCH = armv7e-m
 SPECS = nosys.specs 
 LINKER_FILE = -T ../msp432p401r.lds
 CPPFLAGs = -DMSP432 -MMD
 LDFLAGS = -Wl,-Map=$(TARGET).map $(LINKER_FILE) $(INCLUDES)   
 CFLAGS = -Wall -Werror -g -O0 -std=c99 -mcpu=$(CPU) -march=$(ARCH) -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=$(SPECS) 
else
 CC = gcc
 LD = ld
 CPPFLAGs = -DHOST -MMD
 LDFLAGS = -Wl,-Map=$(TARGET).map $(INCLUDES)
 CFLAGS = -Wall -Werror -g -O0 -std=c99 
endif


OBJS := $(SOURCES:.c=.o)


%.i :%.c 
	$(CC) -E $(CPPFLAGs)  -o $@ $^ 

%.asm :%.c 
	$(CC) -S  $(CPPFLAGs) $(CFLAGS) $(LDFLAGS) -o $@ $^

%.o :%.c 
	$(CC) -c  $(CPPFLAGs) $(CFLAGS) $(LDFLAGS) -o $@ $^

.PHONY:build
build: $(TARGET).out
$(TARGET).out: $(SOURCES)
	$(CC) $(CPPFLAGs) $(CFLAGS) $(LDFLAGS) $(SOURCES) -o $(TARGET).out

.PHONY:compile-all
compile-all: $(SOURCES)
	$(CC) -c $(CPPFLAGs) $(CFLAGS) $(LDFLAGS)  $(SOURCES)

.PHONY:clean 
clean:
	rm -f $(OBJS) $(TARGET).map $(TARGET).out *.asm *.i *.d


