package com.android.camera.ObjectClear;

import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import android.view.MotionEvent;
import com.android.common.appService.C0329e;

public class NubiaObjectClear {
    private C0329e aHj = null;
    private C0153a aHk = null;

    public static native void Cancel();

    public static native int Detect(Bitmap bitmap, Bitmap bitmap2);

    public static native int SavePicture(byte[] bArr, int i, int i2, int i3, int i4);

    public static native void SelectLabel(int i, int i2, Bitmap bitmap);

    public NubiaObjectClear(C0329e c0329e, C0153a c0153a) {
        this.aHj = c0329e;
        this.aHk = c0153a;
    }

    public void aWC() {
        this.aHk.aWJ();
    }

    public void aWE(Size size) {
        this.aHk.aWI(size);
    }

    public void aWF(int i) {
        this.aHk.aWK(i);
    }

    public void aWD(MotionEvent motionEvent, int i, int i2) {
        this.aHk.aWH(motionEvent, i, i2);
    }

    public void aWB() {
        this.aHk.aWG();
    }

    static {
        System.loadLibrary("ImageAlogrithm");
    }
}
