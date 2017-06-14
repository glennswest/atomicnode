# Include common Makefile code.
BASE_IMAGE_NAME=s2i-nodejs
ONBUILD_IMAGE_NAME=nodejs
NAMESPACE=glennswest
VERSIONS = 6.11.0

# Include common Makefile code.
include hack/common.mk
