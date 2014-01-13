#!/bin/bash
# Copyright (c) 2014 The Native Client Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

source pkg_info
source ../../build_tools/common.sh

if [ "${NACL_GLIBC}" != "1" ]; then
  readonly GLIBC_COMPAT=${NACLPORTS_INCLUDE}/glibc-compat
  NACLPORTS_CFLAGS+=" -I${GLIBC_COMPAT}"
  export LIBS="-lglibc-compat"
fi

PackageInstall
exit 0
