package com.android.common;

import android.graphics.Bitmap;

public class CameraBufferManager {
    public native byte[] getBrightnessJpegData(int i, int i2);

    public native byte[] getData(int i);

    public native int getNumStored();

    public native int getRemainImages();

    public native void getSlowShuttleBitmap(int i, Bitmap bitmap);

    public native byte[] getSlowShuttleData(int i, int i2, int i3);

    public native int[] getSlowShuttlePreviewData(int i);

    public native boolean initDataBuffer(long j, int i);

    public native boolean initSlowShuttleBuffer(int i, int i2, int i3, int i4);

    public native void putBrightnessJpegData(int i, byte[] bArr);

    public native boolean putData(int i, byte[] bArr);

    public native boolean putSlowShuttleData(int i, byte[] bArr);

    public native void releaseBrightnessBuffer();

    public native void releaseBuffer();

    public native void releaseSlowShuttleBuffer();

    public native void setLumaThreshold(int i);

    public native void setOperatorMode(int i);

    public native void setSlowShuttleISO(int i, int i2);

    public native void setStopWorkFlag(boolean z);

    static {
        System.loadLibrary("buffer_manager");
    }
}
