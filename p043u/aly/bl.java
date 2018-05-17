package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bl implements Serializable, Cloneable, cj {
    private static final aP bwK = new aP("Response");
    private static final cB bwL = new cB("resp_code", (byte) 8, (short) 1);
    private static final cB bwM = new cB("msg", (byte) 11, (short) 2);
    private static final cB bwN = new cB("imprint", (byte) 12, (short) 3);
    private static final Map bwO = new HashMap();
    public static final Map f890d;
    public int f891a;
    public String f892b;
    public bc f893c;
    private byte f894k = (byte) 0;
    private C1384e[] f895l = new C1384e[]{C1384e.MSG, C1384e.IMPRINT};

    public enum C1384e implements aF {
        RESP_CODE((short) 1, "resp_code"),
        MSG((short) 2, "msg"),
        IMPRINT((short) 3, "imprint");
        
        private static final Map f887d = null;
        private final short f888e;
        private final String f889f;

        static {
            f887d = new HashMap();
            Iterator it = EnumSet.allOf(C1384e.class).iterator();
            while (it.hasNext()) {
                C1384e c1384e = (C1384e) it.next();
                f887d.put(c1384e.m1081b(), c1384e);
            }
        }

        private C1384e(short s, String str) {
            this.f888e = (short) s;
            this.f889f = str;
        }

        public short mo1020a() {
            return this.f888e;
        }

        public String m1081b() {
            return this.f889f;
        }
    }

    static {
        bwO.put(C1341b.class, new C1345I());
        bwO.put(dB.class, new aK());
        Map enumMap = new EnumMap(C1384e.class);
        enumMap.put(C1384e.RESP_CODE, new cv("resp_code", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1384e.MSG, new cv("msg", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1384e.IMPRINT, new cv("imprint", (byte) 2, new da((byte) 12, bc.class)));
        f890d = Collections.unmodifiableMap(enumMap);
        cv.bUa(bl.class, f890d);
    }

    public boolean m1084e() {
        return aN.bVw(this.f894k, 0);
    }

    public void m1083a(boolean z) {
        this.f894k = (byte) aN.bVz(this.f894k, 0, z);
    }

    public String m1085f() {
        return this.f892b;
    }

    public boolean m1086i() {
        return this.f892b != null;
    }

    public void bVp(boolean z) {
        if (!z) {
            this.f892b = null;
        }
    }

    public bc m1087j() {
        return this.f893c;
    }

    public boolean m1088l() {
        return this.f893c != null;
    }

    public void bVq(boolean z) {
        if (!z) {
            this.f893c = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bwO.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bwO.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Response(");
        stringBuilder.append("resp_code:");
        stringBuilder.append(this.f891a);
        if (m1086i()) {
            stringBuilder.append(", ");
            stringBuilder.append("msg:");
            if (this.f892b != null) {
                stringBuilder.append(this.f892b);
            } else {
                stringBuilder.append("null");
            }
        }
        if (m1088l()) {
            stringBuilder.append(", ");
            stringBuilder.append("imprint:");
            if (this.f893c != null) {
                stringBuilder.append(this.f893c);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1089m() {
        if (this.f893c != null) {
            this.f893c.m1015n();
        }
    }
}
