package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ax implements Serializable, Cloneable, cj {
    private static final aP bzd = new aP("Event");
    private static final cB bze = new cB("name", (byte) 11, (short) 1);
    private static final cB bzf = new cB("properties", (byte) 13, (short) 2);
    private static final cB bzg = new cB("duration", (byte) 10, (short) 3);
    private static final cB bzh = new cB("acc", (byte) 8, (short) 4);
    private static final cB bzi = new cB("ts", (byte) 10, (short) 5);
    private static final Map bzj = new HashMap();
    public static final Map bzk;
    public String f684a;
    public Map f685b;
    public long f686c;
    public int f687d;
    public long f688e;
    private byte f689q = (byte) 0;
    private C1371e[] f690r = new C1371e[]{C1371e.DURATION, C1371e.ACC};

    public enum C1371e implements aF {
        NAME((short) 1, "name"),
        PROPERTIES((short) 2, "properties"),
        DURATION((short) 3, "duration"),
        ACC((short) 4, "acc"),
        TS((short) 5, "ts");
        
        private static final Map byL = null;
        private final short f775g;
        private final String f776h;

        static {
            byL = new HashMap();
            Iterator it = EnumSet.allOf(C1371e.class).iterator();
            while (it.hasNext()) {
                C1371e c1371e = (C1371e) it.next();
                byL.put(c1371e.m941b(), c1371e);
            }
        }

        private C1371e(short s, String str) {
            this.f775g = (short) s;
            this.f776h = str;
        }

        public short mo1020a() {
            return this.f775g;
        }

        public String m941b() {
            return this.f776h;
        }
    }

    static {
        bzj.put(C1341b.class, new C1410w());
        bzj.put(dB.class, new ab());
        Map enumMap = new EnumMap(C1371e.class);
        enumMap.put(C1371e.NAME, new cv("name", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1371e.PROPERTIES, new cv("properties", (byte) 1, new cy((byte) 13, new cw((byte) 11), new da((byte) 12, bj.class))));
        enumMap.put(C1371e.DURATION, new cv("duration", (byte) 2, new cw((byte) 10)));
        enumMap.put(C1371e.ACC, new cv("acc", (byte) 2, new cw((byte) 8)));
        enumMap.put(C1371e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        bzk = Collections.unmodifiableMap(enumMap);
        cv.bUa(ax.class, bzk);
    }

    public ax m858a(String str) {
        this.f684a = str;
        return this;
    }

    public void m859a(boolean z) {
        if (!z) {
            this.f684a = null;
        }
    }

    public ax bYi(Map map) {
        this.f685b = map;
        return this;
    }

    public void bYj(boolean z) {
        if (!z) {
            this.f685b = null;
        }
    }

    public ax m857a(long j) {
        this.f686c = j;
        bYk(true);
        return this;
    }

    public boolean m860m() {
        return aN.bVw(this.f689q, 0);
    }

    public void bYk(boolean z) {
        this.f689q = (byte) aN.bVz(this.f689q, 0, z);
    }

    public ax m856a(int i) {
        this.f687d = i;
        bYm(true);
        return this;
    }

    public boolean bYl() {
        return aN.bVw(this.f689q, 1);
    }

    public void bYm(boolean z) {
        this.f689q = (byte) aN.bVz(this.f689q, 1, z);
    }

    public ax bYn(long j) {
        this.f688e = j;
        bYp(true);
        return this;
    }

    public boolean bYo() {
        return aN.bVw(this.f689q, 2);
    }

    public void bYp(boolean z) {
        this.f689q = (byte) aN.bVz(this.f689q, 2, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bzj.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bzj.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Event(");
        stringBuilder.append("name:");
        if (this.f684a != null) {
            stringBuilder.append(this.f684a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("properties:");
        if (this.f685b != null) {
            stringBuilder.append(this.f685b);
        } else {
            stringBuilder.append("null");
        }
        if (m860m()) {
            stringBuilder.append(", ");
            stringBuilder.append("duration:");
            stringBuilder.append(this.f686c);
        }
        if (bYl()) {
            stringBuilder.append(", ");
            stringBuilder.append("acc:");
            stringBuilder.append(this.f687d);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f688e);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bYq() {
        if (this.f684a == null) {
            throw new dj("Required field 'name' was not present! Struct: " + toString());
        } else if (this.f685b == null) {
            throw new dj("Required field 'properties' was not present! Struct: " + toString());
        }
    }
}
