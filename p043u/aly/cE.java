package p043u.aly;

import android.content.Context;
import com.umeng.analytics.C1296a;
import java.util.Arrays;

public class cE implements C1335A {
    private static cE bzy = null;
    private int bzx = 0;
    private final long f937i = 60000;

    public static synchronized cE m1138a(Context context) {
        cE cEVar;
        synchronized (cE.class) {
            if (bzy == null) {
                bzy = new cE();
                bzy.m1140a(C1413z.m1279a(context).m1282b().m1193a(0));
            }
            cEVar = bzy;
        }
        return cEVar;
    }

    private cE() {
    }

    public bp bYN(Context context, bp bpVar) {
        if (bpVar == null) {
            return null;
        }
        if (this.bzx == 1) {
            bpVar.m1108a(null);
        } else if (this.bzx == 2) {
            bpVar.bWB(Arrays.asList(new bn[]{m1141b(context)}));
            bpVar.m1108a(null);
        } else if (this.bzx == 3) {
            bpVar.bWB(null);
            bpVar.m1108a(null);
        }
        return bpVar;
    }

    public bn m1141b(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        bn bnVar = new bn();
        bnVar.m878a(dg.m1228g(context));
        bnVar.m877a(currentTimeMillis);
        bnVar.bRE(currentTimeMillis + 60000);
        bnVar.bRG(60000);
        return bnVar;
    }

    public long m1139a() {
        switch (this.bzx) {
            case 1:
                return 14400000;
            case 2:
                return 28800000;
            case 3:
                return C1296a.f551g;
            default:
                return 0;
        }
    }

    public void m1140a(int i) {
        if (i >= 0 && i <= 3) {
            this.bzx = i;
        }
    }

    public boolean m1142c() {
        return this.bzx != 0;
    }

    public void bSj(cm cmVar) {
        m1140a(cmVar.m1193a(0));
    }
}
