package com.android.multiexposure;

public class MultiExposure {
    private C0972g alk = null;

    public native byte[] getFinalData();

    public native void putData(byte[] bArr, int i, int i2);

    public native void release();

    public native void setParameter(int i);

    public native void setType(int i);

    static {
        System.loadLibrary("multi_exposure");
    }

    public void callFromNative(int i) {
        if (this.alk != null) {
            this.alk.awj(i);
        }
    }
}
