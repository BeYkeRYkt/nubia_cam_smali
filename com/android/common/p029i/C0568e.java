package com.android.common.p029i;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.C0093a;
import com.p010a.C0090a;

class C0568e implements C0093a {
    final /* synthetic */ C0567d YN;

    private C0568e(C0567d c0567d) {
        this.YN = c0567d;
    }

    public void ago(AMapLocation aMapLocation) {
        int bup = aMapLocation.bup();
        if (bup == 0) {
            this.YN.YI = aMapLocation;
        } else {
            C0090a.bvo("NubiaAMapLocationManager", "not located yet ret " + bup + ": message " + aMapLocation.bur());
        }
    }
}
