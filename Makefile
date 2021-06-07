XCODEBUILD := xcodebuild
BUILD_FLAGS = -scheme $(SCHEME) -destination $(DESTINATION)

SCHEME ?= Tamboon
PLATFORM ?= iOS
IOS_VERSION ?= latest
IPHONE_NAME ?= iPhone 8

ifeq ($(PLATFORM),iOS)
	DESTINATION ?= 'platform=iOS Simulator,name=$(IPHONE_NAME),OS=$(IOS_VERSION)'
endif

XCPRETTY :=
ifneq ($(CIRCLE_ARTIFACTS),)
	XCPRETTY += | tee $${CIRCLE_ARTIFACTS}/xcode_raw_$(SCHEME).log
endif
ifneq ($(shell type -p xcpretty),)
	XCPRETTY += | xcpretty -c && exit $${PIPESTATUS[0]}
endif

dependencies: carthage-bootstrap

build: dependencies
	$(XCODEBUILD) $(BUILD_FLAGS) $(XCPRETTY)

bootstrap: dependencies

carthage-bootstrap:
	carthage bootstrap --platform $(PLATFORM) --use-xcframeworks --cache-builds

test: bootstrap
	$(XCODEBUILD) test $(BUILD_FLAGS) $(XCPRETTY)

test-all:
	PLATFORM=iOS "$(MAKE)" test
	PLATFORM=iOS TARGET=TamboonAPI "$(MAKE)" test
