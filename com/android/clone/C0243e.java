package com.android.clone;

import android.graphics.Bitmap;
import com.p010a.C0090a;

public class C0243e {
    private int amR = 0;

    public int ayi(byte[] bArr, int i, Bitmap bitmap, int i2, int i3, int i4, int i5) {
        if (this.amR >= 5) {
            C0090a.m1e("Clone", "savePicture failed, because mPicture > 5");
            return -1;
        }
        int aAb = CloneJni.aAb(this.amR, i2, i3, i4, i5, bArr, i, bitmap);
        this.amR++;
        if (aAb >= 0) {
            return this.amR;
        }
        C0090a.m1e("Clone", "savePicture failed, because ret = " + aAb);
        return -1;
    }

    public int ayg() {
        return this.amR;
    }

    public void ayc(Bitmap bitmap) {
        CloneJni.aAc(bitmap);
    }

    public void ayf(int i, Bitmap bitmap, Bitmap bitmap2) {
        CloneJni.aAd(i, bitmap, bitmap2);
    }

    public void aya(int i, Bitmap bitmap) {
        CloneJni.aAe(i, bitmap);
    }

    public void ayj(Bitmap bitmap) {
        CloneJni.aAf(bitmap);
    }

    public byte[] ayb() {
        return CloneJni.aAg();
    }

    public void ayd(int i, Bitmap bitmap) {
        CloneJni.aAh(i, bitmap);
    }

    public void aye(int i, Bitmap bitmap) {
        CloneJni.aAi(i, bitmap);
    }

    public void ayh() {
        this.amR = 0;
        CloneJni.aAj();
    }
}
