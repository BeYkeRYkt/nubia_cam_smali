package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bc implements Serializable, Cloneable, cj {
    private static final aP bAh = new aP("Imprint");
    private static final cB bAi = new cB("property", (byte) 13, (short) 1);
    private static final cB bAj = new cB("version", (byte) 8, (short) 2);
    private static final cB bAk = new cB("checksum", (byte) 11, (short) 3);
    private static final Map bAl = new HashMap();
    public static final Map f826d;
    public Map f827a;
    public int f828b;
    public String f829c;
    private byte f830k = (byte) 0;

    public enum C1375e implements aF {
        PROPERTY((short) 1, "property"),
        VERSION((short) 2, "version"),
        CHECKSUM((short) 3, "checksum");
        
        private static final Map f823d = null;
        private final short f824e;
        private final String f825f;

        static {
            f823d = new HashMap();
            Iterator it = EnumSet.allOf(C1375e.class).iterator();
            while (it.hasNext()) {
                C1375e c1375e = (C1375e) it.next();
                f823d.put(c1375e.m1006b(), c1375e);
            }
        }

        private C1375e(short s, String str) {
            this.f824e = (short) s;
            this.f825f = str;
        }

        public short mo1020a() {
            return this.f824e;
        }

        public String m1006b() {
            return this.f825f;
        }
    }

    static {
        bAl.put(C1341b.class, new bA());
        bAl.put(dB.class, new C1403n());
        Map enumMap = new EnumMap(C1375e.class);
        enumMap.put(C1375e.PROPERTY, new cv("property", (byte) 1, new cy((byte) 13, new cw((byte) 11), new da((byte) 12, bd.class))));
        enumMap.put(C1375e.VERSION, new cv("version", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1375e.CHECKSUM, new cv("checksum", (byte) 1, new cw((byte) 11)));
        f826d = Collections.unmodifiableMap(enumMap);
        cv.bUa(bc.class, f826d);
    }

    public Map m1010d() {
        return this.f827a;
    }

    public boolean m1011f() {
        return this.f827a != null;
    }

    public void m1009a(boolean z) {
        if (!z) {
            this.f827a = null;
        }
    }

    public int m1012h() {
        return this.f828b;
    }

    public bc m1007a(int i) {
        this.f828b = i;
        bZq(true);
        return this;
    }

    public boolean m1013j() {
        return aN.bVw(this.f830k, 0);
    }

    public void bZq(boolean z) {
        this.f830k = (byte) aN.bVz(this.f830k, 0, z);
    }

    public String m1014k() {
        return this.f829c;
    }

    public bc m1008a(String str) {
        this.f829c = str;
        return this;
    }

    public void bZr(boolean z) {
        if (!z) {
            this.f829c = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bAl.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bAl.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Imprint(");
        stringBuilder.append("property:");
        if (this.f827a != null) {
            stringBuilder.append(this.f827a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("version:");
        stringBuilder.append(this.f828b);
        stringBuilder.append(", ");
        stringBuilder.append("checksum:");
        if (this.f829c != null) {
            stringBuilder.append(this.f829c);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1015n() {
        if (this.f827a == null) {
            throw new dj("Required field 'property' was not present! Struct: " + toString());
        } else if (this.f829c == null) {
            throw new dj("Required field 'checksum' was not present! Struct: " + toString());
        }
    }
}
