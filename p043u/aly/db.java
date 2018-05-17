package p043u.aly;

import android.content.Context;
import com.umeng.analytics.C1311f;

public final class db implements C1359v {
    private static db bAg;
    private Context f979b;
    private C1359v bAf = new C1360X(this.f979b);

    public class C1391a implements dk {
        protected boolean f976a;
        protected boolean f977b;
        protected int f978c;

        public C1391a() {
            this(false, true);
        }

        public C1391a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public C1391a(boolean z, boolean z2, int i) {
            this.f976a = false;
            this.f977b = true;
            this.f976a = z;
            this.f977b = z2;
            this.f978c = i;
        }

        public dl bSS(cU cUVar) {
            dl c1395f = new C1395f(cUVar, this.f976a, this.f977b);
            if (this.f978c != 0) {
                c1395f.bRl(this.f978c);
            }
            return c1395f;
        }
    }

    private db(Context context) {
        this.f979b = context.getApplicationContext();
    }

    public static synchronized db m1220a(Context context) {
        db dbVar;
        synchronized (db.class) {
            if (bAg == null && context != null) {
                bAg = new db(context);
            }
            dbVar = bAg;
        }
        return dbVar;
    }

    public void bRA(C1351P c1351p) {
        C1311f.m660b(new aV(this, c1351p));
    }

    public void bRz(C1351P c1351p) {
        this.bAf.bRz(c1351p);
    }

    public void mo1007a() {
        C1311f.m660b(new bJ(this));
    }

    public void mo1008b() {
        C1311f.m660b(new aJ(this));
    }

    public void mo1011c() {
        C1311f.m661c(new C1349N(this));
    }
}
