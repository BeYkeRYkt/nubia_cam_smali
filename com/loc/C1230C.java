package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class C1230C {
    private static C1230C bdR;
    Context f109a;
    SharedPreferences bdS = null;
    Editor bdT = null;
    private String f110d = null;

    private C1230C(Context context) {
        this.f109a = context;
        if (this.f110d == null) {
            this.f110d = ak.m248a("MD5", this.f109a.getPackageName());
        }
    }

    public static C1230C m80a(Context context) {
        if (bdR == null) {
            bdR = new C1230C(context);
        }
        return bdR;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void bwl(com.amap.api.location.AMapLocation r5) {
        /*
        r4 = this;
        r3 = 0;
        r1 = 0;
        r0 = r4.f109a;
        if (r0 != 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        r0 = com.loc.C1253X.bwU(r5);
        if (r0 == 0) goto L_0x0006;
    L_0x000d:
        r0 = r5.bum();
        r2 = 2;
        if (r0 == r2) goto L_0x002d;
    L_0x0014:
        r0 = r4.bdS;
        if (r0 == 0) goto L_0x002e;
    L_0x0018:
        r0 = r4.bdT;
        if (r0 == 0) goto L_0x003a;
    L_0x001c:
        r0 = r5.buH();
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 == 0) goto L_0x0043;
    L_0x0026:
        r0 = android.text.TextUtils.isEmpty(r1);
        if (r0 == 0) goto L_0x0065;
    L_0x002c:
        return;
    L_0x002d:
        return;
    L_0x002e:
        r0 = r4.f109a;
        r2 = "pref";
        r0 = r0.getSharedPreferences(r2, r3);
        r4.bdS = r0;
        goto L_0x0018;
    L_0x003a:
        r0 = r4.bdS;
        r0 = r0.edit();
        r4.bdT = r0;
        goto L_0x001c;
    L_0x0043:
        r0 = r5.buH();	 Catch:{ Throwable -> 0x0059 }
        r2 = "UTF-8";
        r0 = r0.getBytes(r2);	 Catch:{ Throwable -> 0x0059 }
        r2 = r4.f110d;	 Catch:{ Throwable -> 0x0059 }
        r0 = com.loc.ak.byc(r0, r2);	 Catch:{ Throwable -> 0x0059 }
    L_0x0054:
        r1 = com.loc.cz.m549a(r0);
        goto L_0x0026;
    L_0x0059:
        r0 = move-exception;
        r2 = "LastLocationManager";
        r3 = "setLastFix";
        com.loc.bx.bBw(r0, r2, r3);
        r0 = r1;
        goto L_0x0054;
    L_0x0065:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "lastfix";
        r0 = r0.append(r2);
        r2 = com.loc.bx.f337e;
        r0 = r0.append(r2);
        r0 = r0.toString();
        r2 = r4.bdT;
        r2.putString(r0, r1);
        r0 = r4.bdT;
        com.loc.bA.bBP(r0);
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C.bwl(com.amap.api.location.AMapLocation):void");
    }
}
