package com.android.common.p025c;

import android.graphics.Bitmap;
import android.net.Uri;
import com.android.common.p028h.C0562f;

public class C0373c implements C0370e {
    private Bitmap JO = null;
    private int JP = 0;
    private Uri JQ = null;
    private float JR = 1.0f;

    public C0373c(Uri uri, Bitmap bitmap, int i, float f) {
        this.JQ = uri;
        this.JO = bitmap;
        this.JP = i;
        this.JR = f;
    }

    public C0562f Ld() {
        this.JO = Bitmap.createScaledBitmap(this.JO, (int) (((float) this.JO.getWidth()) * this.JR), (int) (((float) this.JO.getHeight()) * this.JR), true);
        return C0562f.afN(this.JQ, this.JO, this.JP);
    }
}
