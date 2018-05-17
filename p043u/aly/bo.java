package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bo implements Serializable, Cloneable, cj {
    private static final aP bAm = new aP("Traffic");
    private static final cB bAn = new cB("upload_traffic", (byte) 8, (short) 1);
    private static final cB bAo = new cB("download_traffic", (byte) 8, (short) 2);
    private static final Map bAp = new HashMap();
    public static final Map bAq;
    public int f901a;
    public int f902b;
    private byte f903j = (byte) 0;

    public enum C1386e implements aF {
        UPLOAD_TRAFFIC((short) 1, "upload_traffic"),
        DOWNLOAD_TRAFFIC((short) 2, "download_traffic");
        
        private static final Map byV = null;
        private final short f899d;
        private final String f900e;

        static {
            byV = new HashMap();
            Iterator it = EnumSet.allOf(C1386e.class).iterator();
            while (it.hasNext()) {
                C1386e c1386e = (C1386e) it.next();
                byV.put(c1386e.m1095b(), c1386e);
            }
        }

        private C1386e(short s, String str) {
            this.f899d = (short) s;
            this.f900e = str;
        }

        public short mo1020a() {
            return this.f899d;
        }

        public String m1095b() {
            return this.f900e;
        }
    }

    static {
        bAp.put(C1341b.class, new C1408t());
        bAp.put(dB.class, new ck());
        Map enumMap = new EnumMap(C1386e.class);
        enumMap.put(C1386e.UPLOAD_TRAFFIC, new cv("upload_traffic", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1386e.DOWNLOAD_TRAFFIC, new cv("download_traffic", (byte) 1, new cw((byte) 8)));
        bAq = Collections.unmodifiableMap(enumMap);
        cv.bUa(bo.class, bAq);
    }

    public bo m1099a(int i) {
        this.f901a = i;
        m1100a(true);
        return this;
    }

    public boolean m1101e() {
        return aN.bVw(this.f903j, 0);
    }

    public void m1100a(boolean z) {
        this.f903j = (byte) aN.bVz(this.f903j, 0, z);
    }

    public bo bZz(int i) {
        this.f902b = i;
        bZA(true);
        return this;
    }

    public boolean m1102i() {
        return aN.bVw(this.f903j, 1);
    }

    public void bZA(boolean z) {
        this.f903j = (byte) aN.bVz(this.f903j, 1, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bAp.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bAp.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Traffic(");
        stringBuilder.append("upload_traffic:");
        stringBuilder.append(this.f901a);
        stringBuilder.append(", ");
        stringBuilder.append("download_traffic:");
        stringBuilder.append(this.f902b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m1103j() {
    }
}
