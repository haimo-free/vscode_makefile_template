GCC := gcc
CXX := g++
AR  := ar

ARCH ?= $(shell uname -m)
ifeq ($(ARCH), i686)
	ARCH := x86
else ifeq ($(ARCH), x86_64)
	ARCH := x64
else
	ARCH := x64
endif

ifdef arch
	ifeq ($(arch), x86)
		ARCH := x86
	else ifeq ($(arch), x64)
		ARCH := x64
	endif
endif

ROOT_PATH := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
INSTALL_DIR ?= $(ROOT_PATH)/../build

CFLAGS   := -fPIC -g -Wall -Wextra -fno-strict-aliasing -fvisibility=hidden
CXXFLAGS := -fPIC -g -Wall -Wextra -fno-strict-aliasing -fvisibility=hidden -std=c++11

LDFLAGS :=

INCLUDES :=

LIBS := -pthread

EXCLUDE_SOURCES :=

DIRS := .
SOURCES := $(filter-out $(EXCLUDE_SOURCES),$(foreach dir,$(DIRS),$(wildcard $(dir)/*.cpp)))
C_SOURCES := $(filter-out $(EXCLUDE_SOURCES),$(foreach dir,$(DIRS),$(wildcard $(dir)/*.c)))

OBJS := $(patsubst %.cpp,%.o,$(SOURCES))
OBJS += $(patsubst %.c,%.o,$(C_SOURCES))