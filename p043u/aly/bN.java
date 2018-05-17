package p043u.aly;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1297b;
import com.umeng.analytics.C1315h;

public class bN implements C1335A {
    private static bN byt = null;
    private final long f792a = 1296000000;
    private final long f793b = 129600000;
    private C1315h byp;
    private aA byq;
    private int byr = 10000;
    private Context bys;
    private final int f794c = 1800000;
    private final int f795d = 10000;
    private long f796g = 1296000000;
    private long f797i = 0;
    private long f798j = 0;

    public static synchronized bN bXz(Context context, aA aAVar) {
        bN bNVar;
        synchronized (bN.class) {
            if (byt == null) {
                byt = new bN(context, aAVar);
                byt.bSj(C1413z.m1279a(context).m1282b());
            }
            bNVar = byt;
        }
        return bNVar;
    }

    private bN(Context context, aA aAVar) {
        this.bys = context;
        this.byp = C1315h.m670a(context);
        this.byq = aAVar;
    }

    public boolean m955a() {
        if (this.byp.m686g() || this.byq.m819f()) {
            return false;
        }
        boolean z;
        long currentTimeMillis = System.currentTimeMillis() - this.byq.bUu();
        if (currentTimeMillis <= this.f796g) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (currentTimeMillis <= 129600000) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return false;
            }
            this.f797i = 0;
            this.f798j = currentTimeMillis;
            return true;
        }
        this.f797i = (long) C1297b.m607a(this.byr, ce.m1173a(this.bys));
        this.f798j = currentTimeMillis;
        return true;
    }

    public long m956b() {
        return this.f797i;
    }

    public void bSj(cm cmVar) {
        this.f796g = cmVar.m1194a(1296000000);
        int bYy = cmVar.bYy(0);
        if (bYy != 0) {
            this.byr = bYy;
        } else if (AnalyticsConfig.sLatentWindow > 0 && AnalyticsConfig.sLatentWindow <= 1800000) {
            this.byr = AnalyticsConfig.sLatentWindow;
        } else {
            this.byr = 10000;
        }
    }
}
