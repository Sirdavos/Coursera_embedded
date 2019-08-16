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

# Add your Source files and include paths to these variables
ifeq ($(PLATFORM), MSP432)
 SOURCES = interrupts_msp432p401r_gcc.c \
	   startup_msp432p401r_gcc.c \
	   system_msp432p401r.c \
	   main.c \
	   memory.c
 INCLUDES = -I ../include/common/ \
	    -I ../include/msp432/ \
	    -I ../include/CMSIS/
else
 SOURCES = main.c memory.c 
 INCLUDES = -I ../include/commoain.c memory.c 
 INCLUDES = -I ../include/common/
endif
a = $(shell  echo $(SOURCES))
$(info  $(a))

