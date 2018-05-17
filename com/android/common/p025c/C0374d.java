package com.android.common.p025c;

import android.net.Uri;
import com.android.common.p028h.C0562f;

public class C0374d implements C0370e {
    private int JS = 0;
    private String JT = null;
    private int JU = 0;
    private Uri JV = null;

    public C0374d(Uri uri, String str, int i, int i2) {
        this.JV = uri;
        this.JT = str;
        this.JU = i;
        this.JS = i2;
    }

    public C0562f Ld() {
        return C0562f.afN(this.JV, C0562f.afU(this.JT, this.JU), this.JS);
    }
}
