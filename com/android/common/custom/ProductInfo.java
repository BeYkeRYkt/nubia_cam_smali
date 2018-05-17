package com.android.common.custom;

public class ProductInfo {
    public static native String getProductName();

    static {
        System.loadLibrary("productinfo");
    }
}
