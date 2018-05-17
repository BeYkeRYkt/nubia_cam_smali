package com.loc;

import android.content.Context;
import java.util.List;

public class C1263h {
    private Context f487b;
    private C1268m bdh = m558a(this.f487b);

    public C1263h(Context context) {
        this.f487b = context;
    }

    private C1268m m558a(Context context) {
        try {
            return new C1268m(context, C1268m.bvB(bN.class));
        } catch (Throwable th) {
            C1259s.bwd(th, "UpdateLogDB", "getDB");
            return null;
        }
    }

    public av m559a() {
        try {
            if (this.bdh == null) {
                this.bdh = m558a(this.f487b);
            }
            List bvL = this.bdh.bvL("1=1", av.class);
            if (bvL.size() > 0) {
                return (av) bvL.get(0);
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "UpdateLogDB", "getUpdateLog");
        }
        return null;
    }

    public void bvz(av avVar) {
        if (avVar != null) {
            try {
                if (this.bdh == null) {
                    this.bdh = m558a(this.f487b);
                }
                String str = "1=1";
                List bvL = this.bdh.bvL(str, av.class);
                if (bvL != null) {
                    if (bvL.size() != 0) {
                        this.bdh.bvF(str, avVar);
                    }
                }
                this.bdh.bvH(avVar);
            } catch (Throwable th) {
                C1259s.bwd(th, "UpdateLogDB", "updateLog");
            }
        }
    }
}
