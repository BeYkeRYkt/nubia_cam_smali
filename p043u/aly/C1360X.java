package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fotonation.utils.GtStatus;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import com.umeng.analytics.C1311f;
import com.umeng.analytics.C1315h;
import java.util.List;

public final class C1360X implements C1359v, C1335A {
    private final long f663a = 28800000;
    private final int f664b = 5000;
    private bZ bvT = null;
    private C1315h bvU = null;
    private aA bvV = null;
    private cE bvW = null;
    private C1340E bvX = null;
    private bN bvY = null;
    private bD bvZ = null;
    private cm bwa = null;
    private long bwb = 0;
    private int bwc = 0;
    private int bwd = 0;
    private Context bwe;
    private int f665k = 10;

    public C1360X(Context context) {
        this.bwe = context;
        this.bvT = new bZ(context);
        this.bvV = new aA(context);
        this.bvU = C1315h.m670a(context);
        this.bwa = C1413z.m1279a(context).m1282b();
        this.bvZ = new bD(this);
        this.bvX = C1340E.m734a(this.bwe);
        this.bvW = cE.m1138a(this.bwe);
        this.bvY = bN.bXz(this.bwe, this.bvV);
        SharedPreferences a = cr.m1203a(this.bwe);
        this.bwb = a.getLong("thtstart", 0);
        this.bwc = a.getInt("gkvc", 0);
        this.bwd = a.getInt("ekvc", 0);
    }

    public void mo1007a() {
        if (C1394e.bQp(this.bwe)) {
            m804e();
        } else {
            C1350O.m789c(C1296a.f549e, "network is unavailable");
        }
    }

    public void bRA(C1351P c1351p) {
        if (c1351p != null) {
            this.bvT.bXP(c1351p);
        }
        m802a(c1351p instanceof bn);
    }

    public void bRz(C1351P c1351p) {
        this.bvT.bXP(c1351p);
    }

    public void mo1008b() {
        if (this.bvT.m976b() > 0) {
            try {
                byte[] bTN = bTN(bTM(new int[0]));
                if (bTN != null) {
                    this.bvU.m677a(bTN);
                }
            } catch (Throwable th) {
                if (th instanceof OutOfMemoryError) {
                    this.bvU.m685f();
                }
                if (th != null) {
                    th.printStackTrace();
                }
            }
        }
        cr.m1203a(this.bwe).edit().putLong("thtstart", this.bwb).putInt("gkvc", this.bwc).putInt("ekvc", this.bwd).commit();
    }

    public void mo1011c() {
        bTL(bTM(new int[0]));
    }

    private void m802a(boolean z) {
        boolean f = this.bvV.m819f();
        if (f) {
            this.bvT.bXR(new ao(this.bvV.m827n()));
        }
        if (bTO(z)) {
            m804e();
        } else if (f || m803d()) {
            mo1008b();
        }
    }

    private void m801a(int i) {
        int currentTimeMillis = (int) (System.currentTimeMillis() - this.bvV.bUu());
        bTL(bTM(i, currentTimeMillis));
        C1311f.m659a(new C1399j(this), (long) i);
    }

    private void bTL(bp bpVar) {
        if (bpVar != null) {
            cP a = cP.m1147a(this.bwe);
            a.m1150a();
            bpVar.bWH(a.m1151b());
            byte[] bTN = bTN(bTQ(bpVar));
            if (bTN != null) {
                ce bXZ;
                if (m805f()) {
                    bXZ = ce.bXZ(this.bwe, AnalyticsConfig.getAppkey(this.bwe), bTN);
                } else {
                    bXZ = ce.bXY(this.bwe, AnalyticsConfig.getAppkey(this.bwe), bTN);
                }
                bTN = bXZ.m1182c();
                C1315h a2 = C1315h.m670a(this.bwe);
                a2.m685f();
                a2.m681b(bTN);
                a.m1152d();
            }
        }
    }

    protected bp bTM(int... iArr) {
        Object obj = null;
        try {
            if (TextUtils.isEmpty(AnalyticsConfig.getAppkey(this.bwe))) {
                C1350O.m787b(C1296a.f549e, "Appkey is missing ,Please check AndroidManifest.xml");
                return null;
            }
            bp a;
            byte[] e = C1315h.m670a(this.bwe).m684e();
            if (e != null) {
                a = m800a(e);
            } else {
                a = null;
            }
            if (a == null && this.bvT.m976b() == 0) {
                return null;
            }
            bp bpVar;
            if (a != null) {
                bpVar = a;
            } else {
                bpVar = new bp();
            }
            this.bvT.bXQ(bpVar);
            if (C1350O.f661a && bpVar.bWC()) {
                for (bn bRJ : bpVar.bWA()) {
                    Object obj2;
                    if (bRJ.bRJ() <= 0) {
                        obj2 = obj;
                    } else {
                        int i = 1;
                    }
                    obj = obj2;
                }
                if (obj == null) {
                    C1350O.m790e(C1296a.f549e, "missing Activities or PageViews");
                }
            }
            a = this.bvW.bYN(this.bwe, bpVar);
            if (iArr != null && iArr.length == 2) {
                as asVar = new as();
                asVar.bWh(new bf(iArr[0] / 1000, (long) iArr[1]));
                a.bWN(asVar);
            }
            return a;
        } catch (Exception e2) {
            C1350O.m788b(C1296a.f549e, "Fail to construct message ...", e2);
            C1315h.m670a(this.bwe).m685f();
            return null;
        }
    }

    private bp m800a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            Object bpVar = new bp();
            new bT().bXK(bpVar, bArr);
            return bpVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private byte[] bTN(bp bpVar) {
        if (bpVar == null) {
            return null;
        }
        try {
            byte[] bWg = new bG().bWg(bpVar);
            C1350O.m789c(C1296a.f549e, bpVar.toString());
            return bWg;
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "Fail to serialize log ...", e);
            return null;
        }
    }

    private boolean bTO(boolean z) {
        if (!C1394e.bQp(this.bwe)) {
            C1350O.m789c(C1296a.f549e, "network is unavailable");
            return false;
        } else if (this.bvV.m819f()) {
            return true;
        } else {
            return this.bvZ.bWb(z).mo960a(z);
        }
    }

    private boolean m803d() {
        return this.bvT.m976b() > this.f665k;
    }

    private void m804e() {
        try {
            if (this.bvU.m686g()) {
                bR bRVar = new bR(this.bwe, this.bvV);
                bRVar.bXC(this);
                if (this.bvW.m1142c()) {
                    bRVar.bXB(true);
                }
                bRVar.m962a();
            } else {
                bp bTM = bTM(new int[0]);
                if (bTP(bTM)) {
                    bR bRVar2 = new bR(this.bwe, this.bvV);
                    bRVar2.bXC(this);
                    if (this.bvW.m1142c()) {
                        bRVar2.bXB(true);
                    }
                    bRVar2.bXA(bTQ(bTM));
                    bRVar2.m963a(m805f());
                    bRVar2.m962a();
                } else {
                    C1350O.m787b(C1296a.f549e, " not legitimate!");
                }
            }
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
                if (th != null) {
                    th.printStackTrace();
                }
            } else if (th != null) {
                th.printStackTrace();
            }
        }
    }

    private boolean bTP(bp bpVar) {
        if (bpVar == null) {
            C1350O.m787b(C1296a.f549e, "No data to report");
            return false;
        } else if (bpVar.m1110c() == null || bpVar.m1111f() == null || bpVar.m1112j() == null || bpVar.m1113m() == null) {
            return false;
        } else {
            return true;
        }
    }

    private bp bTQ(bp bpVar) {
        int i;
        int i2;
        int i3;
        long currentTimeMillis;
        int i4;
        int i5 = 5000;
        Object obj = null;
        List bWw = bpVar.bWw();
        if (bWw != null) {
            int size = bWw.size();
            if (size > 0) {
                i = 0;
                i2 = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    i2 += ((be) bWw.get(i6)).bXk();
                    i += ((be) bWw.get(i6)).m1032l();
                }
                i3 = i;
                i = i2;
                currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.bwb <= 28800000) {
                    obj = 1;
                }
                if (obj != null) {
                    i4 = i - 5000;
                    i2 = i3 - 5000;
                    if (i4 > 0 || i2 > 0) {
                        bTR(i4, i2, bWw);
                    }
                    if (i4 > 0) {
                        i = 5000;
                    }
                    this.bwc = i;
                    if (i2 > 0) {
                        i3 = 5000;
                    }
                    this.bwd = i3;
                    this.bwb = currentTimeMillis;
                } else {
                    i4 = this.bwc > 5000 ? (this.bwc + i) - 5000 : i;
                    if (this.bwd > 5000) {
                        i2 = (this.bwd + i3) - 5000;
                    } else {
                        i2 = i3;
                    }
                    if (i4 > 0 || i2 > 0) {
                        bTR(i4, i2, bWw);
                    }
                    if (i4 <= 0) {
                        i4 = this.bwc + i;
                    } else {
                        i4 = 5000;
                    }
                    this.bwc = i4;
                    if (i2 <= 0) {
                        i5 = this.bwd + i3;
                    }
                    this.bwd = i5;
                }
                return bpVar;
            }
        }
        i3 = 0;
        i = 0;
        currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.bwb <= 28800000) {
            obj = 1;
        }
        if (obj != null) {
            if (this.bwc > 5000) {
            }
            if (this.bwd > 5000) {
                i2 = i3;
            } else {
                i2 = (this.bwd + i3) - 5000;
            }
            if (i4 > 0) {
                if (i4 <= 0) {
                    i4 = 5000;
                } else {
                    i4 = this.bwc + i;
                }
                this.bwc = i4;
                if (i2 <= 0) {
                    i5 = this.bwd + i3;
                }
                this.bwd = i5;
            }
            bTR(i4, i2, bWw);
            if (i4 <= 0) {
                i4 = this.bwc + i;
            } else {
                i4 = 5000;
            }
            this.bwc = i4;
            if (i2 <= 0) {
                i5 = this.bwd + i3;
            }
            this.bwd = i5;
        } else {
            i4 = i - 5000;
            i2 = i3 - 5000;
            if (i4 > 0) {
                if (i4 > 0) {
                    i = 5000;
                }
                this.bwc = i;
                if (i2 > 0) {
                    i3 = 5000;
                }
                this.bwd = i3;
                this.bwb = currentTimeMillis;
            }
            bTR(i4, i2, bWw);
            if (i4 > 0) {
                i = 5000;
            }
            this.bwc = i;
            if (i2 > 0) {
                i3 = 5000;
            }
            this.bwd = i3;
            this.bwb = currentTimeMillis;
        }
        return bpVar;
    }

    private void bTR(int i, int i2, List list) {
        int i3;
        int size;
        int size2 = list.size();
        if (i > 0) {
            i3 = size2 - 1;
            while (i3 >= 0) {
                List bXm = ((be) list.get(i3)).bXm();
                if (bXm.size() >= i) {
                    i3 = bXm.size() - i;
                    size = bXm.size();
                    while (true) {
                        size--;
                        if (size < i3) {
                            break;
                        }
                        bXm.remove(size);
                    }
                } else {
                    i -= bXm.size();
                    bXm.clear();
                    i3--;
                }
            }
        }
        if (i2 > 0) {
            i3 = size2 - 1;
            while (i3 >= 0) {
                List n = ((be) list.get(i3)).m1033n();
                if (n.size() < i2) {
                    i2 -= n.size();
                    n.clear();
                    i3--;
                } else {
                    i3 = n.size() - i2;
                    size = n.size();
                    while (true) {
                        size--;
                        if (size >= i3) {
                            n.remove(size);
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }

    private boolean m805f() {
        switch (this.bwa.bYz(-1)) {
            case GtStatus.FAIL /*-1*/:
                return AnalyticsConfig.sEncrypt;
            case 0:
                return false;
            case 1:
                return true;
            default:
                return false;
        }
    }

    private void bTS(int i) {
        m801a(i);
    }

    public void bSj(cm cmVar) {
        this.bvX.bSj(cmVar);
        this.bvW.bSj(cmVar);
        this.bvY.bSj(cmVar);
        this.bvZ.bWd(cmVar);
    }
}
