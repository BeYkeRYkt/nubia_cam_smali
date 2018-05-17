package com.android.dng;

public class DngCreator {
    public native void raw2Dng(byte[] bArr, String str, String str2);

    static {
        System.loadLibrary("dngcreator");
    }
}
