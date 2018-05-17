package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bk implements Serializable, Cloneable, cj {
    private static final aP bxt = new aP("Resolution");
    private static final cB bxu = new cB("height", (byte) 8, (short) 1);
    private static final cB bxv = new cB("width", (byte) 8, (short) 2);
    private static final Map bxw = new HashMap();
    public static final Map bxx;
    public int f884a;
    public int f885b;
    private byte f886j;

    public enum C1383e implements aF {
        HEIGHT((short) 1, "height"),
        WIDTH((short) 2, "width");
        
        private static final Map bvp = null;
        private final short f882d;
        private final String f883e;

        static {
            bvp = new HashMap();
            Iterator it = EnumSet.allOf(C1383e.class).iterator();
            while (it.hasNext()) {
                C1383e c1383e = (C1383e) it.next();
                bvp.put(c1383e.m1072b(), c1383e);
            }
        }

        private C1383e(short s, String str) {
            this.f882d = (short) s;
            this.f883e = str;
        }

        public short mo1020a() {
            return this.f882d;
        }

        public String m1072b() {
            return this.f883e;
        }
    }

    static {
        bxw.put(C1341b.class, new bO());
        bxw.put(dB.class, new C1339D());
        Map enumMap = new EnumMap(C1383e.class);
        enumMap.put(C1383e.HEIGHT, new cv("height", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1383e.WIDTH, new cv("width", (byte) 1, new cw((byte) 8)));
        bxx = Collections.unmodifiableMap(enumMap);
        cv.bUa(bk.class, bxx);
    }

    public bk() {
        this.f886j = (byte) 0;
    }

    public bk(int i, int i2) {
        this();
        this.f884a = i;
        m1076a(true);
        this.f885b = i2;
        bVV(true);
    }

    public boolean m1077e() {
        return aN.bVw(this.f886j, 0);
    }

    public void m1076a(boolean z) {
        this.f886j = (byte) aN.bVz(this.f886j, 0, z);
    }

    public boolean m1078i() {
        return aN.bVw(this.f886j, 1);
    }

    public void bVV(boolean z) {
        this.f886j = (byte) aN.bVz(this.f886j, 1, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bxw.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bxw.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Resolution(");
        stringBuilder.append("height:");
        stringBuilder.append(this.f884a);
        stringBuilder.append(", ");
        stringBuilder.append("width:");
        stringBuilder.append(this.f885b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1079j() {
    }
}
