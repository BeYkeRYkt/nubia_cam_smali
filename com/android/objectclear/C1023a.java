package com.android.objectclear;

import android.app.Activity;
import android.hardware.Camera.Size;
import com.android.camera.ObjectClear.NubiaObjectClear;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C1023a {
    private static String aJv;
    private C1024b aJA;
    private Runnable aJB = new C1036n(this);
    private int aJw = 0;
    private Activity aJx;
    private C0329e aJy;
    private boolean aJz = false;
    private int height;
    private int width;

    public C1023a(C0329e c0329e) {
        this.aJx = c0329e.SN();
        aJv = this.aJx.getFilesDir().toString();
        this.aJy = c0329e;
        Size Gv = c0329e.Tn().Gv();
        this.width = Gv.width;
        this.height = Gv.height;
    }

    public void aZB(C1024b c1024b) {
        this.aJA = c1024b;
    }

    public void start() {
        C0090a.m1e("NubiaObjectClearDataProvider", "start");
        new Thread(this.aJB).start();
    }

    public void stop() {
        this.aJz = true;
    }

    private void aZA(int i, byte[] bArr) {
        C0090a.m1e("NubiaObjectClearDataProvider", "dumpRawData SavePicture ret = " + NubiaObjectClear.SavePicture(bArr, i, 5, this.width, this.height));
    }
}
