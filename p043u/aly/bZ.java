package p043u.aly;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import com.umeng.analytics.C1310e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class bZ {
    private List f806a = new ArrayList();
    private ao byO = null;
    private aq byP = null;
    private at byQ = null;
    private bh byR = null;
    private Context byS = null;

    public bZ(Context context) {
        this.byS = context;
    }

    public synchronized int m976b() {
        int size;
        size = this.f806a.size();
        if (this.byO != null) {
            size++;
        }
        return size;
    }

    public synchronized void bXP(C1351P c1351p) {
        this.f806a.add(c1351p);
    }

    public void bXQ(bp bpVar) {
        String g = dg.m1228g(this.byS);
        if (g != null) {
            synchronized (this) {
                if (this.byO != null) {
                    if (new aA(this.byS).m819f()) {
                        bpVar.bWr(this.byO);
                        this.byO = null;
                    }
                }
                for (C1351P bTy : this.f806a) {
                    bTy.bTy(bpVar, g);
                }
                this.f806a.clear();
            }
            bpVar.bWl(m977c());
            bpVar.bWn(m978d());
            bpVar.bWp(m979e());
            bpVar.bWk(m982h());
            bpVar.bWE(m980f());
            bpVar.bWH(m981g());
            bpVar.bWK(m984j());
            bpVar.bWQ(m983i());
        }
    }

    public synchronized void bXR(ao aoVar) {
        this.byO = aoVar;
    }

    public synchronized aq m977c() {
        if (this.byP == null) {
            this.byP = new aq();
            m973a(this.byS);
        }
        return this.byP;
    }

    public synchronized at m978d() {
        if (this.byQ == null) {
            this.byQ = new at();
            m974b(this.byS);
        }
        return this.byQ;
    }

    public synchronized bh m979e() {
        if (this.byR == null) {
            this.byR = new bh();
            m975c(this.byS);
        }
        return this.byR;
    }

    public bc m980f() {
        try {
            return C1413z.m1279a(this.byS).m1281a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public bb m981g() {
        try {
            return cP.m1147a(this.byS).m1151b();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ar m982h() {
        try {
            return aA.m813a(this.byS);
        } catch (Exception e) {
            e.printStackTrace();
            return new ar();
        }
    }

    public Map m983i() {
        return C1340E.m734a(this.byS).m739e();
    }

    public ap m984j() {
        String[] a = C1310e.m655a(this.byS);
        if (a == null || TextUtils.isEmpty(a[0]) || TextUtils.isEmpty(a[1])) {
            return null;
        }
        return new ap(a[0], a[1]);
    }

    private void m973a(Context context) {
        try {
            this.byP.m905a(AnalyticsConfig.getAppkey(context));
            this.byP.bUQ(AnalyticsConfig.getChannel(context));
            if (!(AnalyticsConfig.mWrapperType == null || AnalyticsConfig.mWrapperVersion == null)) {
                this.byP.bUS(AnalyticsConfig.mWrapperType);
                this.byP.bUV(AnalyticsConfig.mWrapperVersion);
            }
            this.byP.bUJ(C1394e.bQz(context));
            this.byP.bUM(bm.ANDROID);
            this.byP.bUO(C1296a.f547c);
            this.byP.m907b(C1394e.m1247d(context));
            this.byP.m904a(Integer.parseInt(C1394e.m1246c(context)));
            this.byP.bUY(AnalyticsConfig.mVerticalType);
            this.byP.bUO(AnalyticsConfig.getSDKVersion());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void m974b(Context context) {
        try {
            this.byQ.bZK(C1394e.m1244a());
            this.byQ.m930a(C1394e.m1248f(context));
            this.byQ.m932b(C1394e.m1249g(context));
            this.byQ.bZD(C1394e.bQu(context));
            this.byQ.bZH(Build.MODEL);
            this.byQ.bZN("Android");
            this.byQ.bZQ(VERSION.RELEASE);
            int[] bQv = C1394e.bQv(context);
            if (bQv != null) {
                this.byQ.bZT(new bk(bQv[1], bQv[0]));
            }
            if (AnalyticsConfig.GPU_RENDERER != null) {
                if (AnalyticsConfig.GPU_VENDER == null) {
                }
            }
            this.byQ.caa(Build.BOARD);
            this.byQ.cad(Build.BRAND);
            this.byQ.m929a(Build.TIME);
            this.byQ.cai(Build.MANUFACTURER);
            this.byQ.cal(Build.ID);
            this.byQ.can(Build.DEVICE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void m975c(Context context) {
        try {
            String[] bQn = C1394e.bQn(context);
            if ("Wi-Fi".equals(bQn[0])) {
                this.byR.bTg(an.ACCESS_TYPE_WIFI);
            } else if ("2G/3G".equals(bQn[0])) {
                this.byR.bTg(an.ACCESS_TYPE_2G_3G);
            } else {
                this.byR.bTg(an.ACCESS_TYPE_UNKNOWN);
            }
            if (!"".equals(bQn[1])) {
                this.byR.bTj(bQn[1]);
            }
            this.byR.bSZ(C1394e.bQx(context));
            bQn = C1394e.bQr(context);
            this.byR.m1056b(bQn[0]);
            this.byR.m1054a(bQn[1]);
            this.byR.m1053a(C1394e.bQq(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
