package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bf implements Serializable, Cloneable, cj {
    private static final aP bAr = new aP("Latent");
    private static final cB bAs = new cB("latency", (byte) 8, (short) 1);
    private static final cB bAt = new cB("interval", (byte) 10, (short) 2);
    private static final Map bAu = new HashMap();
    public static final Map bAv;
    public int f849a;
    public long f850b;
    private byte f851j;

    public enum C1378e implements aF {
        LATENCY((short) 1, "latency"),
        INTERVAL((short) 2, "interval");
        
        private static final Map bwS = null;
        private final short f847d;
        private final String f848e;

        static {
            bwS = new HashMap();
            Iterator it = EnumSet.allOf(C1378e.class).iterator();
            while (it.hasNext()) {
                C1378e c1378e = (C1378e) it.next();
                bwS.put(c1378e.m1035b(), c1378e);
            }
        }

        private C1378e(short s, String str) {
            this.f847d = (short) s;
            this.f848e = str;
        }

        public short mo1020a() {
            return this.f847d;
        }

        public String m1035b() {
            return this.f848e;
        }
    }

    static {
        bAu.put(C1341b.class, new aB());
        bAu.put(dB.class, new bq());
        Map enumMap = new EnumMap(C1378e.class);
        enumMap.put(C1378e.LATENCY, new cv("latency", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1378e.INTERVAL, new cv("interval", (byte) 1, new cw((byte) 10)));
        bAv = Collections.unmodifiableMap(enumMap);
        cv.bUa(bf.class, bAv);
    }

    public bf() {
        this.f851j = (byte) 0;
    }

    public bf(int i, long j) {
        this();
        this.f849a = i;
        m1039a(true);
        this.f850b = j;
        bZB(true);
    }

    public boolean m1040e() {
        return aN.bVw(this.f851j, 0);
    }

    public void m1039a(boolean z) {
        this.f851j = (byte) aN.bVz(this.f851j, 0, z);
    }

    public boolean m1041i() {
        return aN.bVw(this.f851j, 1);
    }

    public void bZB(boolean z) {
        this.f851j = (byte) aN.bVz(this.f851j, 1, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bAu.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bAu.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Latent(");
        stringBuilder.append("latency:");
        stringBuilder.append(this.f849a);
        stringBuilder.append(", ");
        stringBuilder.append("interval:");
        stringBuilder.append(this.f850b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1042j() {
    }
}
