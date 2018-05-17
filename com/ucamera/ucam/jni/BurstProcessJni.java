package com.ucamera.ucam.jni;

import com.p010a.C0090a;

public class BurstProcessJni {
    private static String TAG = "BurstProcessJni";
    public static CallBackJNI mCallBackJNI;

    public interface CallBackJNI {
        void updateJniStatus(int i, int i2, String str);
    }

    public static native int addToCMM(byte[] bArr, String str, int i);

    public static native void initCMM(String str, String str2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, int i6);

    public static native void stopCMM();

    static {
        try {
            System.loadLibrary("BurstProcessJni");
        } catch (UnsatisfiedLinkError e) {
            C0090a.m1e(TAG, "BurstProcessJni library not found!");
        }
    }

    public static void setBurstListener(CallBackJNI callBackJNI) {
        mCallBackJNI = callBackJNI;
    }

    public static void CMMCallback(int i, int i2, String str) {
        if (mCallBackJNI != null) {
            mCallBackJNI.updateJniStatus(i, i2, str);
        }
    }
}
