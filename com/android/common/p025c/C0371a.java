package com.android.common.p025c;

import android.net.Uri;
import com.android.common.p028h.C0562f;

public class C0371a implements C0370e {
    private byte[] JE = null;
    private int JF = 0;
    private int JG = 1;
    private Uri JH = null;

    public C0371a(Uri uri, byte[] bArr, int i, int i2) {
        this.JH = uri;
        this.JE = bArr;
        this.JF = i;
        this.JG = i2;
    }

    public C0562f Ld() {
        return C0562f.afV(this.JE, this.JF, this.JG, this.JH);
    }
}
