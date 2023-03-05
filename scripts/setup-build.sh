#!/bin/bash

usage () {
        echo "usage:  setup-build.sh <build folder name>"
	echo "Example: setup-build.sh rpi3-build"
}

SRCDIR="$(pwd)"

if [ $# -lt 1 ]
then
   usage
   return -1
fi
 
bn=$1

if [ ! -d "$bn" ]
then
   source sources/est-yocto/oe-init-build-env $bn
   cat <<EOF >> conf/local.conf

MACHINE = \"raspberrypi3\"
DL_DIR ?= \"/work/downloads\"
SSTATE_DIR ?= \"/work/sstate-cache/bsp-raspberrypi\"

EOF
   cp ../sources/est-yocto/build.sh .
   cat <<EOF >> conf/bblayers.conf

BBLAYERS += " \\
${SRCDIR}/sources/meta-raspberrypi \\
${SRCDIR}/sources/meta-openembedded/meta-oe \\
${SRCDIR}/sources/meta-openembedded/meta-python \\
${SRCDIR}/sources/meta-openembedded/meta-multimedia \\
${SRCDIR}/sources/meta-openembedded/meta-networking \\
${SRCDIR}/sources/meta-openembedded/meta-gnome \\
${SRCDIR}/sources/meta-python2 \\ 
${SRCDIR}/sources/meta-mingw \\
${SRCDIR}/sources/meta-qt5 \\
${SRCDIR}/sources/meta-qt5-extra \\
${SRCDIR}/sources/meta-boot2qt/meta-boot2qt \\
${SRCDIR}sources/meta-boot2qt/meta-boot2qt-distro \\

 "
EOF
else
   cd $bn
fi


