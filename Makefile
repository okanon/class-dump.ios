
ARCHS = arm64
DEBUG=0


include $(THEOS)/makefiles/common.mk


TOOL_NAME = class-dump
class-dump_CFLAGS = -fobjc-arc -include src/ext.h -I./include/linux

class-dump_FRAMEWORKS = UIKit
class-dump_FILES = $(wildcard src/*.*m)

include $(THEOS_MAKE_PATH)/tool.mk
