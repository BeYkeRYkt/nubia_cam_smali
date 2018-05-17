package com.nubia.camera.common.Native;

import android.graphics.Bitmap;
import com.p010a.C0090a;

public class EletronicAlgorithm {
    private native int asyncPutYuvData(byte[] bArr);

    private native int cancel();

    private native void getPreivewBitmap(Bitmap bitmap, int[] iArr);

    private native int init(int i, int i2, int i3, int i4, int i5, boolean z, int i6, int i7);

    private native int quit();

    private native int stop(Bitmap bitmap);

    private void btV(String str) {
        C0090a.bvo("EletronicAlgorithm", str);
    }

    static {
        System.loadLibrary("NubiaImageAlgorithm");
    }

    public void btQ(int i, int i2, int i3, int i4, int i5, boolean z, int i6, int i7) {
        btV("init");
        init(i, i2, i3, i4, i5, z, i6, i7);
    }

    public void btT() {
        btV("cancel");
        cancel();
    }

    public void btS(Bitmap bitmap) {
        btV("stop");
        stop(bitmap);
    }

    public void release() {
        btV("quit");
        quit();
    }

    public int btU(byte[] bArr) {
        return asyncPutYuvData(bArr);
    }

    public void btR(Bitmap bitmap, int[] iArr) {
        getPreivewBitmap(bitmap, iArr);
    }
}
