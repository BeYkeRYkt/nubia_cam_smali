package com.amap.api.location;

import android.content.Context;
import android.content.Intent;
import com.loc.bH;
import com.loc.bR;
import com.loc.bx;

public class C0094b {
    Context f22a;
    C0095c bcM;

    public C0094b(Context context) {
        if (context != null) {
            try {
                this.f22a = context.getApplicationContext();
                this.bcM = buJ(this.f22a, null);
                return;
            } catch (Throwable th) {
                bx.bBw(th, "AMapLocationClient", "AMapLocationClient 1");
                return;
            }
        }
        throw new IllegalArgumentException("Context参数不能为null");
    }

    private C0095c buJ(Context context, Intent intent) {
        C0095c c0095c;
        try {
            c0095c = (C0095c) bH.bCj(context, bx.m434a("2.5.1"), "com.amap.api.location.LocationManagerWrapper", bR.class, new Class[]{Context.class, Intent.class}, new Object[]{context, intent});
        } catch (Throwable th) {
            c0095c = new bR(context, intent);
        }
        return c0095c != null ? c0095c : new bR(context, intent);
    }

    public void buK(C0093a c0093a) {
        if (c0093a != null) {
            try {
                this.bcM.buN(c0093a);
                return;
            } catch (Throwable th) {
                bx.bBw(th, "AMapLocationClient", "setLocationListener");
                return;
            }
        }
        throw new IllegalArgumentException("listener参数不能为null");
    }

    public void buL() {
        try {
            this.bcM.buO();
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationClient", "startLocation");
        }
    }

    public void buM() {
        try {
            this.bcM.buP();
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationClient", "stopLocation");
        }
    }

    public void onDestroy() {
        try {
            this.bcM.onDestroy();
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationClient", "onDestroy");
        }
    }
}
