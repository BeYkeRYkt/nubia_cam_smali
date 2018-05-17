package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bi implements Serializable, Cloneable, cj {
    private static final aP bwU = new aP("Page");
    private static final cB bwV = new cB("page_name", (byte) 11, (short) 1);
    private static final cB bwW = new cB("duration", (byte) 10, (short) 2);
    private static final Map bwX = new HashMap();
    public static final Map bwY;
    public String f697a;
    public long f698b;
    private byte f699i = (byte) 0;

    public enum C1381e implements aF {
        PAGE_NAME((short) 1, "page_name"),
        DURATION((short) 2, "duration");
        
        private static final Map bxA = null;
        private final short f874d;
        private final String f875e;

        static {
            bxA = new HashMap();
            Iterator it = EnumSet.allOf(C1381e.class).iterator();
            while (it.hasNext()) {
                C1381e c1381e = (C1381e) it.next();
                bxA.put(c1381e.m1061b(), c1381e);
            }
        }

        private C1381e(short s, String str) {
            this.f874d = (short) s;
            this.f875e = str;
        }

        public short mo1020a() {
            return this.f874d;
        }

        public String m1061b() {
            return this.f875e;
        }
    }

    static {
        bwX.put(C1341b.class, new C1352Q());
        bwX.put(dB.class, new aW());
        Map enumMap = new EnumMap(C1381e.class);
        enumMap.put(C1381e.PAGE_NAME, new cv("page_name", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1381e.DURATION, new cv("duration", (byte) 1, new cw((byte) 10)));
        bwY = Collections.unmodifiableMap(enumMap);
        cv.bUa(bi.class, bwY);
    }

    public bi m873a(String str) {
        this.f697a = str;
        return this;
    }

    public void m874a(boolean z) {
        if (!z) {
            this.f697a = null;
        }
    }

    public bi m872a(long j) {
        this.f698b = j;
        bVu(true);
        return this;
    }

    public boolean m875i() {
        return aN.bVw(this.f699i, 0);
    }

    public void bVu(boolean z) {
        this.f699i = (byte) aN.bVz(this.f699i, 0, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bwX.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bwX.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Page(");
        stringBuilder.append("page_name:");
        if (this.f697a != null) {
            stringBuilder.append(this.f697a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("duration:");
        stringBuilder.append(this.f698b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m876j() {
        if (this.f697a == null) {
            throw new dj("Required field 'page_name' was not present! Struct: " + toString());
        }
    }
}
