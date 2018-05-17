package com.android.common.p029i;

import android.content.Context;
import android.location.Location;
import com.amap.api.location.AMapLocationClientOption$AMapLocationMode;
import com.amap.api.location.C0093a;
import com.amap.api.location.C0094b;
import com.amap.api.location.C0096d;
import com.android.common.C0616j;
import com.p010a.C0090a;

public class C0567d implements C0564c {
    private Context YH;
    private Location YI = null;
    private C0094b YJ = null;
    private C0093a YK = new C0568e();
    private C0096d YL = null;
    private boolean YM = false;

    public C0567d(Context context) {
        C0090a.bvo("NubiaAMapLocationManager", "Using Gaode lbs");
        this.YH = context;
        agk();
    }

    public void agf(boolean z) {
        if (this.YM != z && C0616j.apP(this.YH)) {
            C0090a.bvo("NubiaAMapLocationManager", "recordLcation " + z);
            this.YM = z;
            if (z) {
                agl();
            } else {
                agm();
            }
        }
    }

    public void release() {
        if (this.YJ != null) {
            this.YJ.onDestroy();
            this.YJ = null;
        }
        this.YH = null;
    }

    public Location age() {
        if (this.YM) {
            return this.YI;
        }
        return null;
    }

    private void agk() {
        this.YJ = new C0094b(this.YH);
        this.YL = new C0096d();
        this.YL.buZ(AMapLocationClientOption$AMapLocationMode.Hight_Accuracy);
        this.YL.buT(3000);
        this.YL.buW(false);
        this.YJ.buK(this.YK);
    }

    private void agl() {
        this.YJ.buL();
    }

    private void agm() {
        this.YJ.buM();
    }
}
