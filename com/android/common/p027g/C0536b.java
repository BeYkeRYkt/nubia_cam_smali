package com.android.common.p027g;

import android.graphics.Rect;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.android.common.setting.ListPreference;

public class C0536b implements C0126g {
    private int WA = -1;
    private CameraMember WB = null;
    private ListPreference WC = null;
    private Object WD = new Object();
    private ListPreference WE = null;
    private float[] WF = new float[16];
    private C0329e Wz = null;

    public C0536b(C0329e c0329e) {
        this.Wz = c0329e;
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        synchronized (this.WD) {
            c0550g.Ek();
            Rect al = c0290f.al();
            c0550g.El(0.0f, 0.0f, -1.0f);
            c0550g.Em((float) c0290f.m55S(), 1.0f, 1.0f);
            c0290f.ae().getTransformMatrix(this.WF);
            c0550g.En(c0290f.am() ? c0290f.an() : c0290f.ao(), this.WF, al.left, al.top, al.width(), al.height());
            c0550g.Eo();
        }
        return true;
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public int aI() {
        return 0;
    }

    public void aK(C0290f c0290f) {
    }
}
