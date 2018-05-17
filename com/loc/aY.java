package com.loc;

import android.content.Context;
import java.util.List;

public class aY {
    private Context f185b;
    private C1268m bgw;

    public aY(Context context, boolean z) {
        this.f185b = context;
        this.bgw = bAq(this.f185b, z);
    }

    private C1268m bAq(Context context, boolean z) {
        try {
            return new C1268m(context, C1268m.bvB(bN.class));
        } catch (Throwable th) {
            if (z) {
                th.printStackTrace();
            } else {
                C1259s.bwd(th, "SDKDB", "getDB");
            }
            return null;
        }
    }

    public List m218a() {
        try {
            return this.bgw.bvK(ag.m238f(), ag.class, true);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void bAr(ag agVar) {
        if (agVar != null) {
            try {
                if (this.bgw == null) {
                    this.bgw = bAq(this.f185b, false);
                }
                String a = ag.m236a(agVar.m239a());
                List bvL = this.bgw.bvL(a, ag.class);
                if (bvL != null) {
                    if (bvL.size() != 0) {
                        this.bgw.bvF(a, agVar);
                    }
                }
                this.bgw.bvH(agVar);
            } catch (Throwable th) {
                C1259s.bwd(th, "SDKDB", "insert");
                th.printStackTrace();
            }
        }
    }
}
