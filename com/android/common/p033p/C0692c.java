package com.android.common.p033p;

import android.content.pm.PackageInfo;
import cn.nubia.p003c.C0046a;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.util.Map;

final class C0692c implements Runnable {
    final /* synthetic */ C0690a afB;
    final /* synthetic */ Map afC;

    C0692c(C0690a c0690a, Map map) {
        this.afB = c0690a;
        this.afC = map;
    }

    public void run() {
        this.afB.amN();
        String str = (String) this.afC.get("error");
        C0046a c0046a = (C0046a) this.afC.get("apkInfo");
        C0090a.bvo("Upgrade", "errCOde = " + str + ", apkInfo = " + c0046a);
        if (str == null || this.afB.afv) {
            PackageInfo apE = C0616j.apE(this.afB.afs);
            if (!(c0046a == null || apE == null)) {
                C0090a.bvo("Upgrade", "mApkName = " + c0046a.bME() + ", mAppName" + c0046a.bMD() + ", mVerCode" + c0046a.bMH() + ", mVerName" + c0046a.bMF() + ", mUrl = " + c0046a.bMG());
                if (this.afB.afv) {
                    this.afB.amL(c0046a, apE);
                } else {
                    this.afB.amM(c0046a, apE);
                }
            }
            return;
        }
        this.afB.amR(str);
    }
}
