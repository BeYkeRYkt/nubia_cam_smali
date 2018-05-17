package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bg implements Serializable, Cloneable, cj {
    private static final aP buQ = new aP("Location");
    private static final cB buR = new cB("lat", (byte) 4, (short) 1);
    private static final cB buS = new cB("lng", (byte) 4, (short) 2);
    private static final cB buT = new cB("ts", (byte) 10, (short) 3);
    private static final Map buU = new HashMap();
    public static final Map f855d;
    public double f856a;
    public double f857b;
    public long f858c;
    private byte f859m;

    public enum C1379e implements aF {
        LAT((short) 1, "lat"),
        LNG((short) 2, "lng"),
        TS((short) 3, "ts");
        
        private static final Map f852d = null;
        private final short f853e;
        private final String f854f;

        static {
            f852d = new HashMap();
            Iterator it = EnumSet.allOf(C1379e.class).iterator();
            while (it.hasNext()) {
                C1379e c1379e = (C1379e) it.next();
                f852d.put(c1379e.m1044b(), c1379e);
            }
        }

        private C1379e(short s, String str) {
            this.f853e = (short) s;
            this.f854f = str;
        }

        public short mo1020a() {
            return this.f853e;
        }

        public String m1044b() {
            return this.f854f;
        }
    }

    static {
        buU.put(C1341b.class, new dC());
        buU.put(dB.class, new co());
        Map enumMap = new EnumMap(C1379e.class);
        enumMap.put(C1379e.LAT, new cv("lat", (byte) 1, new cw((byte) 4)));
        enumMap.put(C1379e.LNG, new cv("lng", (byte) 1, new cw((byte) 4)));
        enumMap.put(C1379e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        f855d = Collections.unmodifiableMap(enumMap);
        cv.bUa(bg.class, f855d);
    }

    public bg() {
        this.f859m = (byte) 0;
    }

    public bg(double d, double d2, long j) {
        this();
        this.f856a = d;
        m1046a(true);
        this.f857b = d2;
        bSk(true);
        this.f858c = j;
        bSl(true);
    }

    public boolean m1047e() {
        return aN.bVw(this.f859m, 0);
    }

    public void m1046a(boolean z) {
        this.f859m = (byte) aN.bVz(this.f859m, 0, z);
    }

    public boolean m1048i() {
        return aN.bVw(this.f859m, 1);
    }

    public void bSk(boolean z) {
        this.f859m = (byte) aN.bVz(this.f859m, 1, z);
    }

    public boolean m1049l() {
        return aN.bVw(this.f859m, 2);
    }

    public void bSl(boolean z) {
        this.f859m = (byte) aN.bVz(this.f859m, 2, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) buU.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) buU.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Location(");
        stringBuilder.append("lat:");
        stringBuilder.append(this.f856a);
        stringBuilder.append(", ");
        stringBuilder.append("lng:");
        stringBuilder.append(this.f857b);
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f858c);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1050m() {
    }
}
