package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bd implements Serializable, Cloneable, cj {
    private static final aP bBZ = new aP("ImprintValue");
    private static final cB bCa = new cB("value", (byte) 11, (short) 1);
    private static final cB bCb = new cB("ts", (byte) 10, (short) 2);
    private static final cB bCc = new cB("guid", (byte) 11, (short) 3);
    private static final Map bCd = new HashMap();
    public static final Map f834d;
    public String f835a;
    public long f836b;
    public String f837c;
    private byte f838k = (byte) 0;
    private C1376e[] f839l = new C1376e[]{C1376e.VALUE};

    public enum C1376e implements aF {
        VALUE((short) 1, "value"),
        TS((short) 2, "ts"),
        GUID((short) 3, "guid");
        
        private static final Map f831d = null;
        private final short f832e;
        private final String f833f;

        static {
            f831d = new HashMap();
            Iterator it = EnumSet.allOf(C1376e.class).iterator();
            while (it.hasNext()) {
                C1376e c1376e = (C1376e) it.next();
                f831d.put(c1376e.m1017b(), c1376e);
            }
        }

        private C1376e(short s, String str) {
            this.f832e = (short) s;
            this.f833f = str;
        }

        public short mo1020a() {
            return this.f832e;
        }

        public String m1017b() {
            return this.f833f;
        }
    }

    static {
        bCd.put(C1341b.class, new C1412y());
        bCd.put(dB.class, new cA());
        Map enumMap = new EnumMap(C1376e.class);
        enumMap.put(C1376e.VALUE, new cv("value", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1376e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1376e.GUID, new cv("guid", (byte) 1, new cw((byte) 11)));
        f834d = Collections.unmodifiableMap(enumMap);
        cv.bUa(bd.class, f834d);
    }

    public String m1020c() {
        return this.f835a;
    }

    public boolean m1021e() {
        return this.f835a != null;
    }

    public void m1019a(boolean z) {
        if (!z) {
            this.f835a = null;
        }
    }

    public long m1022f() {
        return this.f836b;
    }

    public boolean m1023i() {
        return aN.bVw(this.f838k, 0);
    }

    public void cbS(boolean z) {
        this.f838k = (byte) aN.bVz(this.f838k, 0, z);
    }

    public String m1024j() {
        return this.f837c;
    }

    public void cbT(boolean z) {
        if (!z) {
            this.f837c = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bCd.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bCd.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ImprintValue(");
        Object obj = 1;
        if (m1021e()) {
            stringBuilder.append("value:");
            if (this.f835a != null) {
                stringBuilder.append(this.f835a);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (obj == null) {
            stringBuilder.append(", ");
        }
        stringBuilder.append("ts:");
        stringBuilder.append(this.f836b);
        stringBuilder.append(", ");
        stringBuilder.append("guid:");
        if (this.f837c != null) {
            stringBuilder.append(this.f837c);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1025m() {
        if (this.f837c == null) {
            throw new dj("Required field 'guid' was not present! Struct: " + toString());
        }
    }
}
