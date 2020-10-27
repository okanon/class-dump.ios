ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:11.0

THEOS_DEVICE_IP=192.168.1.6
DEBUG=0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = class-dump
class-dump_CFLAGS = -fobjc-arc -include src/ext.h -I./include/linux

class-dump_FRAMEWORKS = UIKit
class-dump_FILES = $(wildcard src/*.*m)
class-dump_CODESIGN_FLAGS = -Sent.plist

include $(THEOS_MAKE_PATH)/tool.mk
