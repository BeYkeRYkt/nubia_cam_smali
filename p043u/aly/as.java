package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class as implements Serializable, Cloneable, cj {
    public static final Map f747b;
    private static final aP bxP = new aP("ControlPolicy");
    private static final cB bxQ = new cB("latent", (byte) 12, (short) 1);
    private static final Map bxR = new HashMap();
    public bf f748a;
    private C1368e[] f749f = new C1368e[]{C1368e.LATENT};

    public enum C1368e implements aF {
        LATENT((short) 1, "latent");
        
        private static final Map f744b = null;
        private final short f745c;
        private final String f746d;

        static {
            f744b = new HashMap();
            Iterator it = EnumSet.allOf(C1368e.class).iterator();
            while (it.hasNext()) {
                C1368e c1368e = (C1368e) it.next();
                f744b.put(c1368e.m920b(), c1368e);
            }
        }

        private C1368e(short s, String str) {
            this.f745c = (short) s;
            this.f746d = str;
        }

        public short mo1020a() {
            return this.f745c;
        }

        public String m920b() {
            return this.f746d;
        }
    }

    static {
        bxR.put(C1341b.class, new dA());
        bxR.put(dB.class, new bX());
        Map enumMap = new EnumMap(C1368e.class);
        enumMap.put(C1368e.LATENT, new cv("latent", (byte) 2, new da((byte) 12, bf.class)));
        f747b = Collections.unmodifiableMap(enumMap);
        cv.bUa(as.class, f747b);
    }

    public as bWh(bf bfVar) {
        this.f748a = bfVar;
        return this;
    }

    public boolean m924e() {
        return this.f748a != null;
    }

    public void m923a(boolean z) {
        if (!z) {
            this.f748a = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bxR.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bxR.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ControlPolicy(");
        if (m924e()) {
            stringBuilder.append("latent:");
            if (this.f748a != null) {
                stringBuilder.append(this.f748a);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m925f() {
        if (this.f748a != null) {
            this.f748a.m1042j();
        }
    }
}
