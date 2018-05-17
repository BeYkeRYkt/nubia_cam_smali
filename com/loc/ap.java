package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.C0098f;
import com.amap.api.location.CoordUtil;
import java.io.File;

public class ap {
    static double f229a = 3.141592653589793d;
    private static boolean f230b = false;

    public static C0098f byf(Context context, C0098f c0098f) {
        if (context == null) {
            return null;
        }
        String a = C1251V.m116a(context, "libwgs2gcj.so");
        if (!(TextUtils.isEmpty(a) || !new File(a).exists() || f230b)) {
            try {
                System.load(a);
                f230b = true;
            } catch (Throwable th) {
                bx.bBw(th, "OffsetUtil", "offset");
            }
        }
        return byh(c0098f, f230b);
    }

    public static C0098f byg(Context context, double d, double d2) {
        return context != null ? byf(context, new C0098f(d2, d)) : null;
    }

    private static C0098f byh(C0098f c0098f, boolean z) {
        double[] dArr;
        try {
            if (!bx.bBs(c0098f.getLatitude(), c0098f.getLongitude())) {
                return c0098f;
            }
            dArr = new double[2];
            if (z) {
                if (CoordUtil.convertToGcj(new double[]{c0098f.getLongitude(), c0098f.getLatitude()}, dArr) != 0) {
                    dArr = C1270o.bvU(c0098f.getLongitude(), c0098f.getLatitude());
                }
            } else {
                dArr = C1270o.bvU(c0098f.getLongitude(), c0098f.getLatitude());
            }
            return new C0098f(dArr[1], dArr[0]);
        } catch (Throwable th) {
            bx.bBw(th, "OffsetUtil", "cover part2");
            return c0098f;
        }
    }
}
