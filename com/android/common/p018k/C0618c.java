package com.android.common.p018k;

import android.app.Activity;
import android.os.Handler;
import java.util.ArrayList;

public class C0618c implements C0617a {
    private Activity ZG = null;
    private Handler ZH = null;
    private C0619d ZI = null;
    private ArrayList ZJ = null;
    private C0617a ZK = null;

    public C0618c(Activity activity, Handler handler) {
        this.ZG = activity;
        this.ZH = handler;
        this.ZJ = new ArrayList();
        this.ZI = new C0619d();
    }

    public void ahf(C0149b c0149b) {
        if (!this.ZJ.contains(c0149b)) {
            this.ZJ.add(c0149b);
        }
    }

    public void ahh(C0149b c0149b) {
        this.ZJ.remove(c0149b);
    }

    public void start() {
        if (this.ZK != null) {
            this.ZK.ahf(new C0619d());
            this.ZK.start();
        }
    }

    public void stop() {
        if (this.ZK != null) {
            this.ZK.stop();
            this.ZK.ahh(this.ZI);
        }
    }

    public void ahg() {
        if (this.ZK != null) {
            this.ZK.ahg();
            this.ZK = null;
        }
    }
}
