package com.android.common.p030j;

import android.os.HandlerThread;
import com.p010a.C0090a;

class C0610d extends HandlerThread {
    final /* synthetic */ C0608b Zg;

    public C0610d(C0608b c0608b) {
        this.Zg = c0608b;
        super("mediacoder_draw");
    }

    public void run() {
        super.run();
        if (this.Zg.Zd || this.Zg.YS) {
            C0090a.bvo("VideoMakerRender", "Save last video when exit");
            this.Zg.agu();
        }
    }
}
