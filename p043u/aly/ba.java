package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ba implements Serializable, Cloneable, cj {
    private static final aP bvO = new aP("IdSnapshot");
    private static final cB bvP = new cB("identity", (byte) 11, (short) 1);
    private static final cB bvQ = new cB("ts", (byte) 10, (short) 2);
    private static final cB bvR = new cB("version", (byte) 8, (short) 3);
    private static final Map bvS = new HashMap();
    public static final Map f810d;
    public String f811a;
    public long f812b;
    public int f813c;
    private byte f814l = (byte) 0;

    public enum C1373e implements aF {
        IDENTITY((short) 1, "identity"),
        TS((short) 2, "ts"),
        VERSION((short) 3, "version");
        
        private static final Map f807d = null;
        private final short f808e;
        private final String f809f;

        static {
            f807d = new HashMap();
            Iterator it = EnumSet.allOf(C1373e.class).iterator();
            while (it.hasNext()) {
                C1373e c1373e = (C1373e) it.next();
                f807d.put(c1373e.m986b(), c1373e);
            }
        }

        private C1373e(short s, String str) {
            this.f808e = (short) s;
            this.f809f = str;
        }

        public short mo1020a() {
            return this.f808e;
        }

        public String m986b() {
            return this.f809f;
        }
    }

    static {
        bvS.put(C1341b.class, new C1337B());
        bvS.put(dB.class, new aE());
        Map enumMap = new EnumMap(C1373e.class);
        enumMap.put(C1373e.IDENTITY, new cv("identity", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1373e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1373e.VERSION, new cv("version", (byte) 1, new cw((byte) 8)));
        f810d = Collections.unmodifiableMap(enumMap);
        cv.bUa(ba.class, f810d);
    }

    public String m992c() {
        return this.f811a;
    }

    public ba m990a(String str) {
        this.f811a = str;
        return this;
    }

    public void m991a(boolean z) {
        if (!z) {
            this.f811a = null;
        }
    }

    public long m993f() {
        return this.f812b;
    }

    public ba m989a(long j) {
        this.f812b = j;
        bTz(true);
        return this;
    }

    public boolean m994i() {
        return aN.bVw(this.f814l, 0);
    }

    public void bTz(boolean z) {
        this.f814l = (byte) aN.bVz(this.f814l, 0, z);
    }

    public int m995j() {
        return this.f813c;
    }

    public ba m988a(int i) {
        this.f813c = i;
        bTA(true);
        return this;
    }

    public boolean m996l() {
        return aN.bVw(this.f814l, 1);
    }

    public void bTA(boolean z) {
        this.f814l = (byte) aN.bVz(this.f814l, 1, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bvS.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bvS.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("IdSnapshot(");
        stringBuilder.append("identity:");
        if (this.f811a != null) {
            stringBuilder.append(this.f811a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f812b);
        stringBuilder.append(", ");
        stringBuilder.append("version:");
        stringBuilder.append(this.f813c);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m997m() {
        if (this.f811a == null) {
            throw new dj("Required field 'identity' was not present! Struct: " + toString());
        }
    }
}
