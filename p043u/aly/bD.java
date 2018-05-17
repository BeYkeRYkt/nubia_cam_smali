package p043u.aly;

import com.umeng.analytics.C1296a;
import com.umeng.analytics.ReportPolicy;
import com.umeng.analytics.ReportPolicy.C1285i;
import com.umeng.analytics.ReportPolicy.C1286a;
import com.umeng.analytics.ReportPolicy.C1287b;
import com.umeng.analytics.ReportPolicy.C1288c;
import com.umeng.analytics.ReportPolicy.C1289d;
import com.umeng.analytics.ReportPolicy.C1290e;
import com.umeng.analytics.ReportPolicy.C1292g;
import com.umeng.analytics.ReportPolicy.C1293h;
import com.umeng.analytics.ReportPolicy.C1294j;
import com.umeng.analytics.ReportPolicy.C1295k;

public class bD {
    private C1285i bxC;
    final /* synthetic */ C1360X bxD;
    private int f786c = -1;
    private int f787d = -1;
    private int f788e = -1;
    private int f789f = -1;

    public bD(C1360X c1360x) {
        this.bxD = c1360x;
        int[] bYA = c1360x.bwa.bYA(-1, -1);
        this.f786c = bYA[0];
        this.f787d = bYA[1];
    }

    protected void m951a(boolean z) {
        int i = 1;
        int i2 = 0;
        if (this.bxD.bvW.m1142c()) {
            if (this.bxC instanceof C1287b) {
                if (!this.bxC.mo961a()) {
                }
                this.bxC = i != 0 ? new C1287b(this.bxD.bvV, this.bxD.bvW) : this.bxC;
            }
            i = 0;
            if (i != 0) {
            }
            this.bxC = i != 0 ? new C1287b(this.bxD.bvV, this.bxD.bvW) : this.bxC;
        } else {
            if (this.bxC instanceof C1288c) {
                if (!this.bxC.mo961a()) {
                }
                if (i == 0) {
                    if (z && this.bxD.bvY.m955a()) {
                        this.bxC = new C1288c((int) this.bxD.bvY.m956b());
                        this.bxD.bTS((int) this.bxD.bvY.m956b());
                    } else if (C1350O.f661a && this.bxD.bwa.m1198b()) {
                        C1350O.m789c(C1296a.f549e, "Debug: send log every 15 seconds");
                        this.bxC = new C1286a(this.bxD.bvV);
                    } else if (this.bxD.bvX.m737a()) {
                        i2 = this.f788e;
                        i = this.f789f;
                        if (this.f786c != -1) {
                            i2 = this.f786c;
                            i = this.f787d;
                        }
                        this.bxC = bWc(i2, i);
                    } else {
                        C1350O.m789c(C1296a.f549e, "Start A/B Test");
                        if (this.bxD.bvX.m738b() == 6) {
                            if (!this.bxD.bwa.m1196a()) {
                                i2 = this.bxD.bwa.bYB(90000);
                            } else if (this.f787d > 0) {
                                i2 = this.f789f;
                            } else {
                                i2 = this.f787d;
                            }
                        }
                        this.bxC = bWc(this.bxD.bvX.m738b(), i2);
                    }
                }
            }
            i = 0;
            if (i == 0) {
                if (z) {
                    this.bxC = new C1288c((int) this.bxD.bvY.m956b());
                    this.bxD.bTS((int) this.bxD.bvY.m956b());
                }
                if (C1350O.f661a) {
                    C1350O.m789c(C1296a.f549e, "Debug: send log every 15 seconds");
                    this.bxC = new C1286a(this.bxD.bvV);
                }
                if (this.bxD.bvX.m737a()) {
                    C1350O.m789c(C1296a.f549e, "Start A/B Test");
                    if (this.bxD.bvX.m738b() == 6) {
                        if (!this.bxD.bwa.m1196a()) {
                            i2 = this.bxD.bwa.bYB(90000);
                        } else if (this.f787d > 0) {
                            i2 = this.f787d;
                        } else {
                            i2 = this.f789f;
                        }
                    }
                    this.bxC = bWc(this.bxD.bvX.m738b(), i2);
                } else {
                    i2 = this.f788e;
                    i = this.f789f;
                    if (this.f786c != -1) {
                        i2 = this.f786c;
                        i = this.f787d;
                    }
                    this.bxC = bWc(i2, i);
                }
            }
        }
        C1350O.m789c(C1296a.f549e, "Report policy : " + this.bxC.getClass().getSimpleName());
    }

    public C1285i bWb(boolean z) {
        m951a(z);
        return this.bxC;
    }

    private C1285i bWc(int i, int i2) {
        switch (i) {
            case 0:
                return !(this.bxC instanceof C1293h) ? new C1293h() : this.bxC;
            case 1:
                return !(this.bxC instanceof C1289d) ? new C1289d() : this.bxC;
            case 4:
                if (this.bxC instanceof C1292g) {
                    return this.bxC;
                }
                return new C1292g(this.bxD.bvV);
            case 5:
                if (this.bxC instanceof C1294j) {
                    return this.bxC;
                }
                return new C1294j(this.bxD.bwe);
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                if (!(this.bxC instanceof C1290e)) {
                    return new C1290e(this.bxD.bvV, (long) i2);
                }
                C1285i c1285i = this.bxC;
                ((C1290e) c1285i).m598a((long) i2);
                return c1285i;
            case 8:
                if (this.bxC instanceof C1295k) {
                    return this.bxC;
                }
                return new C1295k(this.bxD.bvV);
            default:
                return !(this.bxC instanceof C1289d) ? new C1289d() : this.bxC;
        }
    }

    public void bWd(cm cmVar) {
        int[] bYA = cmVar.bYA(-1, -1);
        this.f786c = bYA[0];
        this.f787d = bYA[1];
    }
}
