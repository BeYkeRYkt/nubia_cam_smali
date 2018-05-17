package com.loc;

import android.content.Context;
import java.util.List;

public class bn {
    private C1268m bhj;

    public bn(Context context) {
        try {
            this.bhj = new C1268m(context, C1268m.bvB(bN.class));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void bAR(String str, Class cls) {
        this.bhj.bvD(C1236a.bvt(str), cls);
    }

    public void bAP(String str, Class cls) {
        try {
            bAR(str, cls);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogDB", "delLog");
        }
    }

    public void bAQ(String str, Class cls) {
        try {
            bAR(str, cls);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List bAS(int i, Class cls) {
        try {
            return this.bhj.bvL(C1236a.bvu(i), cls);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogDB", "ByState");
            return null;
        }
    }

    public void bAT(C1236a c1236a) {
        if (c1236a != null) {
            String bvt = C1236a.bvt(c1236a.m89b());
            List bvK = this.bhj.bvK(bvt, c1236a.getClass(), true);
            if (bvK == null || bvK.size() == 0) {
                this.bhj.bvI(c1236a, true);
            } else {
                C1236a c1236a2 = (C1236a) bvK.get(0);
                if (c1236a.m86a() != 0) {
                    c1236a2.bvs(0);
                } else {
                    c1236a2.bvs(c1236a2.m91c() + 1);
                }
                this.bhj.bvE(bvt, c1236a2, true);
            }
        }
    }

    public void bAU(C1236a c1236a) {
        try {
            this.bhj.bvF(C1236a.bvt(c1236a.m89b()), c1236a);
        } catch (Throwable th) {
            C1259s.bwd(th, "LogDB", "updateLogInfo");
        }
    }
}
