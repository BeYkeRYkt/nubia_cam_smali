package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ap implements Serializable, Cloneable, cj {
    private static final aP bts = new aP("ActiveUser");
    private static final cB btt = new cB("provider", (byte) 11, (short) 1);
    private static final cB btu = new cB("puid", (byte) 11, (short) 2);
    private static final Map btv = new HashMap();
    public static final Map btw;
    public String f719a;
    public String f720b;

    public enum C1365e implements aF {
        PROVIDER((short) 1, "provider"),
        PUID((short) 2, "puid");
        
        private static final Map bxG = null;
        private final short f717d;
        private final String f718e;

        static {
            bxG = new HashMap();
            Iterator it = EnumSet.allOf(C1365e.class).iterator();
            while (it.hasNext()) {
                C1365e c1365e = (C1365e) it.next();
                bxG.put(c1365e.m896b(), c1365e);
            }
        }

        private C1365e(short s, String str) {
            this.f717d = (short) s;
            this.f718e = str;
        }

        public short mo1020a() {
            return this.f717d;
        }

        public String m896b() {
            return this.f718e;
        }
    }

    static {
        btv.put(C1341b.class, new C1396g());
        btv.put(dB.class, new cs());
        Map enumMap = new EnumMap(C1365e.class);
        enumMap.put(C1365e.PROVIDER, new cv("provider", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1365e.PUID, new cv("puid", (byte) 1, new cw((byte) 11)));
        btw = Collections.unmodifiableMap(enumMap);
        cv.bUa(ap.class, btw);
    }

    public ap(String str, String str2) {
        this();
        this.f719a = str;
        this.f720b = str2;
    }

    public void m900a(boolean z) {
        if (!z) {
            this.f719a = null;
        }
    }

    public void bQC(boolean z) {
        if (!z) {
            this.f720b = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) btv.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) btv.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ActiveUser(");
        stringBuilder.append("provider:");
        if (this.f719a != null) {
            stringBuilder.append(this.f719a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("puid:");
        if (this.f720b != null) {
            stringBuilder.append(this.f720b);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m901j() {
        if (this.f719a == null) {
            throw new dj("Required field 'provider' was not present! Struct: " + toString());
        } else if (this.f720b == null) {
            throw new dj("Required field 'puid' was not present! Struct: " + toString());
        }
    }
}
