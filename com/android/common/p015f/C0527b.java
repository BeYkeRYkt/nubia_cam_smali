package com.android.common.p015f;

import android.hardware.Camera.ShutterCallback;
import android.os.Handler;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public final class C0527b implements ShutterCallback {
    private C0329e VV = null;

    public C0527b(C0329e c0329e) {
        this.VV = c0329e;
    }

    public void onShutter() {
        if (this.VV.TX()) {
            this.VV.SM().arJ(false);
            synchronized (C0384o.Jr().Jw(this.VV.SQ())) {
                this.VV.Tn().Hq(0);
                this.VV.Tn().GX(false);
                this.VV.Tr().IQ(this.VV.Tn());
            }
            adH().sendEmptyMessage(19);
        } else if (this.VV.TY() && !this.VV.TZ()) {
            adH().sendEmptyMessage(19);
        }
        adK(System.currentTimeMillis());
        C0090a.bvo("ShutterCallback", "mShutterLag = " + (adJ() - adI()) + "ms");
    }

    private Handler adH() {
        return adG().Tz();
    }

    private C0329e adG() {
        return this.VV;
    }

    private void adK(long j) {
        adG().Ua(j);
    }

    private long adJ() {
        return adG().TM();
    }

    private long adI() {
        return adG().TI();
    }
}
