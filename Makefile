ARCHS = arm64 arm64e
TARGET = iphoneos:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Brawl Stars

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BSVX
BSVX_FILES = Tweak.x BSVision.m BSHUD.m BSPanel.m BSConfig.m
BSVX_CFLAGS = -fobjc-arc -O3 -ffast-math -funroll-loops
BSVX_FRAMEWORKS = UIKit CoreGraphics QuartzCore
BSVX_PRIVATE_FRAMEWORKS = IOKit

include $(THEOS_MAKE_PATH)/tweak.mk
