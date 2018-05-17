package p043u.aly;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import com.umeng.analytics.C1315h;
import p043u.aly.db.C1391a;

public class bR {
    private cP byu;
    private Context byv;
    private aA byw;
    private aY byx;
    private bp byy;
    private boolean byz;
    private C1413z f802e;
    private final int f803f = 1;
    private boolean f804k = false;

    public bR(Context context, aA aAVar) {
        this.byu = cP.m1147a(context);
        this.f802e = C1413z.m1279a(context);
        this.byv = context;
        this.byw = aAVar;
        this.byx = new aY(context);
        this.byx.bVL(this.byw);
    }

    public void bXA(bp bpVar) {
        this.byy = bpVar;
    }

    public void m963a(boolean z) {
        this.f804k = z;
    }

    public void bXB(boolean z) {
        this.byz = z;
    }

    public void bXC(C1335A c1335a) {
        this.f802e.bSc(c1335a);
    }

    public void m962a() {
        if (this.byy == null) {
            m960b();
        } else {
            m961c();
        }
    }

    private void m960b() {
        C1315h.m670a(this.byv).m687h().m662a(new C1338C(this));
    }

    private void m961c() {
        this.byu.m1150a();
        bp bpVar = this.byy;
        bpVar.bWH(this.byu.m1151b());
        byte[] bXD = bXD(bpVar);
        if (bXD != null) {
            ce bXZ;
            int a;
            if (this.f804k) {
                bXZ = ce.bXZ(this.byv, AnalyticsConfig.getAppkey(this.byv), bXD);
            } else {
                bXZ = ce.bXY(this.byv, AnalyticsConfig.getAppkey(this.byv), bXD);
            }
            byte[] c = bXZ.m1182c();
            C1315h.m670a(this.byv).m685f();
            bXD = this.byx.m851a(c);
            if (bXD != null) {
                a = m959a(bXD);
            } else {
                a = 1;
            }
            switch (a) {
                case 1:
                    if (!this.byz) {
                        C1315h.m670a(this.byv).m681b(c);
                    }
                    C1350O.m787b(C1296a.f549e, "connection error");
                    break;
                case 2:
                    if (this.byw.m826m()) {
                        this.byw.m825l();
                    }
                    this.byu.m1152d();
                    this.byw.m824k();
                    break;
                case 3:
                    this.byw.m824k();
                    break;
            }
            return;
        }
        C1350O.m790e(C1296a.f549e, "message is null");
    }

    private int m959a(byte[] bArr) {
        bl blVar = new bl();
        try {
            new bT(new C1391a()).bXK(blVar, bArr);
            if (blVar.f891a == 1) {
                this.f802e.bSg(blVar.m1087j());
                this.f802e.m1284d();
            }
            C1350O.m785a(C1296a.f549e, "send log:" + blVar.m1085f());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (blVar.f891a != 1) {
            return 3;
        }
        return 2;
    }

    private byte[] bXD(bp bpVar) {
        if (bpVar == null) {
            return null;
        }
        try {
            byte[] bWg = new bG().bWg(bpVar);
            if (C1350O.f661a) {
                C1350O.m789c(C1296a.f549e, bpVar.toString());
            }
            return bWg;
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "Fail to serialize log ...", e);
            return null;
        }
    }
}
