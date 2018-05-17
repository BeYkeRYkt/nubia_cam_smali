package com.android.multiexposure;

import android.content.SharedPreferences;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;

public class C0970e {
    public static final int alh = C0616j.aoT(3);
    public static final int ali = C0616j.aoT(66);
    public static final int alj = (ali + alh);

    public static C0968o awg(C0329e c0329e, int i, C0977l c0977l) {
        C0090a.m1e("MultiExposureUtil", "wq createMultiExposure " + i);
        if (c0329e == null) {
            C0090a.m1e("MultiExposureUtil", "wq createMultiExposure appService == null");
            return null;
        } else if (c0329e.Tr() == null) {
            C0090a.m1e("MultiExposureUtil", "wq createMultiExposure appService.getCameraDevice() == null");
            return null;
        } else {
            C0090a.m1e("MultiExposureUtil", "==wq==createMultiExposure: " + i);
            C0968o awh = C0970e.awh(c0329e, i);
            awh.axy(c0977l);
            return awh;
        }
    }

    public static C0968o awh(C0329e c0329e, int i) {
        switch (i) {
            case 1:
                return new C0976k(c0329e);
            case 2:
                C0968o c0983s = new C0983s(c0329e);
                c0983s.setParameter(C0970e.awi(c0329e).getInt("multi_exposure_parameter", 50));
                return c0983s;
            case 4:
                return new C0969d(c0329e);
            case 5:
                return new C0973h(c0329e);
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
            case 7:
            case 8:
            case 9:
                return new C0984t(c0329e);
            default:
                return null;
        }
    }

    private static SharedPreferences awi(C0329e c0329e) {
        return c0329e.SS();
    }
}
