package cn.nubia.bigAperture;

public class BigApertureDataPacker {
    public native void bokehDataPack(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, float f2);

    static {
        System.loadLibrary("BigAperture");
    }
}
