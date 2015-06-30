#!/bin/bash
##########################################################
#	This script prepares a cache folder. 
#
#	The cache is refreshed if the target already exists.
#
# 	photon/
# 	|-- Makefile
# 	|-- .build-cache/SOURCES
# 	|-- .build-cache/PUBLISHRPMS
#	|-- ...
#
#	Overridable variables:
#		PHOTON_BUILD_CACHE_PATH
#		PHOTON_SOURCES_PATH
#		PHOTON_PUBLISH_RPMS_PATH
##########################################################
set -o errexit
set -o nounset
set +h
source common.inc

#MYDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


: ${SRCROOT:=					$PWD}
: ${PHOTON_BUILD_CACHE_PATH		:=$SRCROOT/.build-cache/SOURCES}
: ${PHOTON_SOURCES_PATH			:=$SRCROOT/.build-cache/SOURCES}
: ${PHOTON_PUBLISH_RPMS_PATH	:=$SRCROOT/.build-cache/PUBLISHRPMS}

[ -f "$SRCROOT/Makefile" ] || $(echo "No Makefile found in $SRCROOT" >&2 && exit 1)

#make publish-rpms PHOTON_PUBLISH_RPMS_DIR="$PHOTON_PUBLISH_RPMS_PATH"

#make sources PHOTON_SRCS_DIR="$PHOTON_SOURCES_PATH"

