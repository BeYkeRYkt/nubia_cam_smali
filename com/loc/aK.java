package com.loc;

import android.content.Context;
import java.util.List;

class aK extends Thread {
    final /* synthetic */ Context f169a;
    final /* synthetic */ String f170b;
    final /* synthetic */ String f171c;

    aK(Context context, String str, String str2) {
        this.f169a = context;
        this.f170b = str;
        this.f171c = str2;
    }

    public void run() {
        try {
            C1268m c1268m = new C1268m(this.f169a, bX.m387c());
            List<bC> bvL = c1268m.bvL(bC.m292a(this.f170b), bC.class);
            if (bvL != null && bvL.size() > 0) {
                for (bC bCVar : bvL) {
                    if (!this.f171c.equalsIgnoreCase(bCVar.m298c())) {
                        cl.bFz(this.f169a, c1268m, bCVar.m296a());
                    }
                }
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DexFileManager", "clearUnSuitableVersion");
        }
    }
}
