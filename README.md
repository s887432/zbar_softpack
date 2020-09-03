# zbar_softpack

This is the open source ZBAR 2D barcode reader library porting to Microchip MPU Softpack.
Has been verified at SoftPack V2.17 and tested in SAMA5D27-SOM1-EK.

However, test image was pre-processed in RAW image. (gray, 8bpp)
To complete the life demo, still need to integrate ISC (CMOS) input.
TODO...

# How to do
git clone https://github.com/s887432/zbar_softpack zbar_test
copy zbar_test $SOFTPACK_PATH/examples/
cd $SOFTPACK_PATH/examples/zbar_test
make TARGET=sama5d27-som1-ek
