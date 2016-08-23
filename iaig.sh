#!/bin/bash
# iaig.sh
#
# -----------------------------------------------------------------------------
# Purpose : iOSAppIconGenerator -iaig-
# -----------------------------------------------------------------------------
# created by mofneko yusuke.a@nekolaboratory.com
#
# Usage :
#   $ iaig.sh outdir srcfile
#       outdir - Path to your iOS project.
#       srcfile - Path to base icon file(.png/512px or 1024px).
#   Example) $ iaig.sh /Users/mofneko/iOSHogeProject /Users/mofneko/iOSiCON.png

outdir=$1"Images.xcassets/AppIcon.appiconset"
rm -rf $outdir
mkdir -p $outdir
srcfile=$2

sips -Z 120 ${srcfile} --out ${outdir}/Icon-60@2x.png
sips -Z 180 ${srcfile} --out ${outdir}/Icon-60@3x.png
sips -Z 72 ${srcfile} --out ${outdir}/Icon-72.png
sips -Z 144 ${srcfile} --out ${outdir}/Icon-72@2x.png
sips -Z 76 ${srcfile} --out ${outdir}/Icon-76.png
sips -Z 152 ${srcfile} --out ${outdir}/Icon-76@2x.png
sips -Z 40 ${srcfile} --out ${outdir}/Icon-Small-40.png
sips -Z 80 ${srcfile} --out ${outdir}/Icon-Small-40@2x.png
sips -Z 120 ${srcfile} --out ${outdir}/Icon-Small-40@3x.png
sips -Z 50 ${srcfile} --out ${outdir}/Icon-Small-50.png
sips -Z 100 ${srcfile} --out ${outdir}/Icon-Small-50@2x.png
sips -Z 29 ${srcfile} --out ${outdir}/Icon-Small.png
sips -Z 58 ${srcfile} --out ${outdir}/Icon-Small@2x.png
sips -Z 87 ${srcfile} --out ${outdir}/Icon-Small@3x.png
sips -Z 57 ${srcfile} --out ${outdir}/Icon.png
sips -Z 114 ${srcfile} --out ${outdir}/Icon@2x.png
sips -Z 167 ${srcfile} --out ${outdir}/Icon-167.png

cat << \EOF > ${outdir}/Contents.json
{
  "images" : [
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-Small.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-Small@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-Small@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-Small-40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-Small-40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "57x57",
      "idiom" : "iphone",
      "filename" : "Icon.png",
      "scale" : "1x"
    },
    {
      "size" : "57x57",
      "idiom" : "iphone",
      "filename" : "Icon@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-Small.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-Small@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-Small-40.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-Small-40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "50x50",
      "idiom" : "ipad",
      "filename" : "Icon-Small-50.png",
      "scale" : "1x"
    },
    {
      "size" : "50x50",
      "idiom" : "ipad",
      "filename" : "Icon-Small-50@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "72x72",
      "idiom" : "ipad",
      "filename" : "Icon-72.png",
      "scale" : "1x"
    },
    {
      "size" : "72x72",
      "idiom" : "ipad",
      "filename" : "Icon-72@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-76.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-76@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "ipad",
      "size" : "83.5x83.5",
      "filename" : "Icon-167.png",
      "scale" : "2x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
EOF
