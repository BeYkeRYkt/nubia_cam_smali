package com.android.common.p025c;

import android.graphics.Bitmap;
import android.net.Uri;
import com.android.common.C0299a;
import com.android.common.p028h.C0562f;

public class C0372b implements C0370e {
    private int JI = 0;
    private int JJ = 0;
    private Uri JK = null;
    private int JL = 0;
    private byte[] JM = null;
    private float JN = 1.0f;

    public C0372b(Uri uri, byte[] bArr, int i, float f, int i2, int i3) {
        this.JK = uri;
        this.JM = bArr;
        this.JJ = i;
        this.JN = f;
        this.JL = i2;
        this.JI = i3;
    }

    public C0562f Ld() {
        Bitmap anX = C0299a.anX(this.JM, this.JL, this.JI, 0);
        return C0562f.afN(this.JK, Bitmap.createScaledBitmap(anX, (int) (((float) anX.getWidth()) * this.JN), (int) (((float) anX.getHeight()) * this.JN), true), this.JJ);
    }
}
