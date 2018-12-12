# Copyright (C) 2018 Red Hat, Inc.
# This file is part of elfutils.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# elfutils is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

. $srcdir/test-subr.sh

# - testfile-gnu-property-note.c
# int
# main ()
# {
#   return 0;
# }
#
# gcc -fcf-protection -c testfile-gnu-property-note.c
# gcc -o testfile-gnu-property-note testfile-gnu-property-note.o
# eu-strip --strip-sections testfile-gnu-property-note

testfiles testfile-gnu-property-note.o testfile-gnu-property-note

# Test reading notes through sections
testrun_compare ${abs_top_builddir}/src/readelf -n testfile-gnu-property-note.o << EOF

Note section [ 6] '.note.gnu.property' of 32 bytes at offset 0x80:
  Owner          Data size  Type
  GNU                   16  GNU_PROPERTY_TYPE_0
    X86 FEATURE_1_AND: 00000003 IBT SHSTK
EOF

# Test reading notes through segments
testrun_compare ${abs_top_builddir}/src/readelf -n testfile-gnu-property-note << EOF

Note segment of 32 bytes at offset 0x300:
  Owner          Data size  Type
  GNU                   16  GNU_PROPERTY_TYPE_0
    X86 FEATURE_1_AND: 00000003 IBT SHSTK

Note segment of 68 bytes at offset 0x320:
  Owner          Data size  Type
  GNU                   16  GNU_ABI_TAG
    OS: Linux, ABI: 3.2.0
  GNU                   20  GNU_BUILD_ID
    Build ID: 83cb2229fabd2065d1361f5b46424cd75270f94b
EOF

# NT_VERSION note type clashes with "GNU" owner type NT_GNU_ABI_TAG.
# Uses owner name (with zero desc) for version string.
testfiles testfile11
testrun_compare ${abs_top_builddir}/src/readelf -n testfile11 << EOF

Note section [ 2] '.note.ABI-tag' of 32 bytes at offset 0x128:
  Owner          Data size  Type
  GNU                   16  GNU_ABI_TAG
    OS: Linux, ABI: 2.2.5

Note section [35] '.note' of 60 bytes at offset 0x13364:
  Owner          Data size  Type
  01.01                  0  VERSION
  01.01                  0  VERSION
  01.01                  0  VERSION
EOF

# See run-annobingroup.sh
testfiles testfile-annobingroup.o
testrun_compare ${abs_top_builddir}/src/readelf -n testfile-annobingroup.o << EOF

Note section [ 5] '.gnu.build.attributes' of 272 bytes at offset 0x50:
  Owner          Data size  Type
  GA                    16  GNU Build Attribute OPEN
    Address Range: 0 - 0
    VERSION: "3p8"
  GA                     0  GNU Build Attribute OPEN
    TOOL: "gcc 8.1.1 20180712"
  GA                     0  GNU Build Attribute OPEN
    "GOW": 5
  GA                     0  GNU Build Attribute OPEN
    STACK_PROT: 0
  GA                     0  GNU Build Attribute OPEN
    "stack_clash": FALSE
  GA                     0  GNU Build Attribute OPEN
    "cf_protection": 0
  GA                     0  GNU Build Attribute OPEN
    PIC: 0
  GA                     0  GNU Build Attribute OPEN
    SHORT_ENUM: FALSE
  GA                     0  GNU Build Attribute OPEN
    ABI: c001100000012
  GA                     0  GNU Build Attribute OPEN
    "stack_realign": FALSE

Note section [ 7] '.gnu.build.attributes..text.unlikely' of 216 bytes at offset 0x160:
  Owner          Data size  Type
  GA                    16  GNU Build Attribute FUNC
    Address Range: 0 - 0
    ABI: c001100000012
  GA                     0  GNU Build Attribute FUNC
    "stack_realign": FALSE
  GA                     0  GNU Build Attribute FUNC
    STACK_PROT: 0
  GA                     0  GNU Build Attribute FUNC
    "stack_clash": FALSE
  GA                     0  GNU Build Attribute FUNC
    "cf_protection": 0
  GA                     0  GNU Build Attribute FUNC
    PIC: 0
  GA                     0  GNU Build Attribute FUNC
    "GOW": 5
  GA                     0  GNU Build Attribute FUNC
    SHORT_ENUM: FALSE

Note section [22] '.note.gnu.property' of 48 bytes at offset 0x40c:
  Owner          Data size  Type
  GNU                   32  GNU_PROPERTY_TYPE_0
    X86 0xc0000000 data: 00 00 00 00
    X86 0xc0000001 data: 00 00 00 00
EOF
