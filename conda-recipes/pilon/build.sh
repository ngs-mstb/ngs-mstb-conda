#!/bin/bash
set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
sed -e "s#~/lib/pilon/pilon-dev.jar#pilon-$PKG_VERSION.jar#" \
<build.sh >build.conda_fixed.sh
sh build.conda_fixed.sh
cp -L pilon-$PKG_VERSION.jar $outdir/
cp $RECIPE_DIR/pilon.py $outdir/pilon
ls -l $outdir
ln -s $outdir/pilon $PREFIX/bin
chmod 0755 "${PREFIX}/bin/pilon"



