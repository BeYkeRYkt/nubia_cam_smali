package p043u.aly;

import android.content.Context;
import com.umeng.analytics.C1296a;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class cP {
    public static cP bzY;
    private final String f938b = "umeng_it.cache";
    private File bzU;
    private bb bzV = null;
    private Set bzW = new HashSet();
    private dr bzX = null;
    private long f939e;
    private long f940f;

    cP(Context context) {
        this.bzU = new File(context.getFilesDir(), "umeng_it.cache");
        this.f940f = C1296a.f551g;
        this.bzX = new dr(context);
        this.bzX.m1241b();
    }

    public static synchronized cP m1147a(Context context) {
        cP cPVar;
        synchronized (cP.class) {
            if (bzY == null) {
                bzY = new cP(context);
                bzY.bYX(new C1354S(context));
                bzY.bYX(new al(context));
                bzY.bYX(new dw(context));
                bzY.bYX(new C1346J(context));
                bzY.bYX(new aU(context));
                bzY.bYX(new by());
                bzY.m1153e();
            }
            cPVar = bzY;
        }
        return cPVar;
    }

    public boolean bYX(cO cOVar) {
        if (this.bzX.m1240a(cOVar.m775b())) {
            return this.bzW.add(cOVar);
        }
        return false;
    }

    public void m1150a() {
        long currentTimeMillis = System.currentTimeMillis();
        if ((currentTimeMillis - this.f939e < this.f940f ? 1 : null) == null) {
            Object obj = null;
            for (cO cOVar : this.bzW) {
                if (cOVar.m776c()) {
                    Object obj2;
                    if (!cOVar.m774a()) {
                        obj2 = obj;
                    } else if (cOVar.m776c()) {
                        r0 = 1;
                    } else {
                        this.bzX.m1242b(cOVar.m775b());
                        r0 = 1;
                    }
                    obj = obj2;
                }
            }
            if (obj != null) {
                m1148g();
                this.bzX.m1239a();
                m1154f();
            }
            this.f939e = currentTimeMillis;
        }
    }

    public bb m1151b() {
        return this.bzV;
    }

    private void m1148g() {
        bb bbVar = new bb();
        Map hashMap = new HashMap();
        List arrayList = new ArrayList();
        for (cO cOVar : this.bzW) {
            if (cOVar.m776c()) {
                if (cOVar.m777d() != null) {
                    hashMap.put(cOVar.m775b(), cOVar.m777d());
                }
                if (!(cOVar.m778e() == null || cOVar.m778e().isEmpty())) {
                    arrayList.addAll(cOVar.m778e());
                }
            }
        }
        bbVar.m1000a(arrayList);
        bbVar.bQF(hashMap);
        synchronized (this) {
            this.bzV = bbVar;
        }
    }

    public void m1152d() {
        boolean z = false;
        for (cO cOVar : this.bzW) {
            if (cOVar.m776c()) {
                boolean z2;
                if (cOVar.m778e() == null || cOVar.m778e().isEmpty()) {
                    z2 = z;
                } else {
                    cOVar.m773a(null);
                    z2 = true;
                }
                z = z2;
            }
        }
        if (z) {
            this.bzV.bQG(false);
            m1154f();
        }
    }

    public void m1153e() {
        bb h = m1149h();
        if (h != null) {
            List<cO> arrayList = new ArrayList(this.bzW.size());
            synchronized (this) {
                this.bzV = h;
                for (cO cOVar : this.bzW) {
                    cOVar.bYW(this.bzV);
                    if (!cOVar.m776c()) {
                        arrayList.add(cOVar);
                    }
                }
                for (cO cOVar2 : arrayList) {
                    this.bzW.remove(cOVar2);
                }
            }
            m1148g();
        }
    }

    public void m1154f() {
        if (this.bzV != null) {
            bYY(this.bzV);
        }
    }

    private bb m1149h() {
        InputStream fileInputStream;
        Exception e;
        Throwable th;
        if (!this.bzU.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(this.bzU);
            try {
                byte[] bVP = bu.bVP(fileInputStream);
                Object bbVar = new bb();
                new bT().bXK(bbVar, bVP);
                bu.bVS(fileInputStream);
                return bbVar;
            } catch (Exception e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    bu.bVS(fileInputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    bu.bVS(fileInputStream);
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            e.printStackTrace();
            bu.bVS(fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            bu.bVS(fileInputStream);
            throw th;
        }
    }

    private void bYY(bb bbVar) {
        if (bbVar != null) {
            try {
                byte[] bWg;
                synchronized (this) {
                    bWg = new bG().bWg(bbVar);
                }
                if (bWg != null) {
                    bu.bVQ(this.bzU, bWg);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
