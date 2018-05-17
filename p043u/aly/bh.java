package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bh implements Serializable, Cloneable, cj {
    private static final cB bvA = new cB("display_name", (byte) 11, (short) 8);
    private static final cB bvB = new cB("access_type", (byte) 8, (short) 9);
    private static final cB bvC = new cB("access_subtype", (byte) 11, (short) 10);
    private static final Map bvD = new HashMap();
    public static final Map bvE;
    private static final aP bvs = new aP("MiscInfo");
    private static final cB bvt = new cB("time_zone", (byte) 8, (short) 1);
    private static final cB bvu = new cB("language", (byte) 11, (short) 2);
    private static final cB bvv = new cB("country", (byte) 11, (short) 3);
    private static final cB bvw = new cB("latitude", (byte) 4, (short) 4);
    private static final cB bvx = new cB("longitude", (byte) 4, (short) 5);
    private static final cB bvy = new cB("carrier", (byte) 11, (short) 6);
    private static final cB bvz = new cB("latency", (byte) 8, (short) 7);
    private byte f862B = (byte) 0;
    private C1380e[] f863C = new C1380e[]{C1380e.TIME_ZONE, C1380e.LANGUAGE, C1380e.COUNTRY, C1380e.LATITUDE, C1380e.LONGITUDE, C1380e.CARRIER, C1380e.LATENCY, C1380e.DISPLAY_NAME, C1380e.ACCESS_TYPE, C1380e.ACCESS_SUBTYPE};
    public int f864a;
    public String f865b;
    public String f866c;
    public double f867d;
    public double f868e;
    public String f869f;
    public int f870g;
    public String f871h;
    public an f872i;
    public String f873j;

    public enum C1380e implements aF {
        TIME_ZONE((short) 1, "time_zone"),
        LANGUAGE((short) 2, "language"),
        COUNTRY((short) 3, "country"),
        LATITUDE((short) 4, "latitude"),
        LONGITUDE((short) 5, "longitude"),
        CARRIER((short) 6, "carrier"),
        LATENCY((short) 7, "latency"),
        DISPLAY_NAME((short) 8, "display_name"),
        ACCESS_TYPE((short) 9, "access_type"),
        ACCESS_SUBTYPE((short) 10, "access_subtype");
        
        private static final Map buw = null;
        private final short f860l;
        private final String f861m;

        static {
            buw = new HashMap();
            Iterator it = EnumSet.allOf(C1380e.class).iterator();
            while (it.hasNext()) {
                C1380e c1380e = (C1380e) it.next();
                buw.put(c1380e.m1052b(), c1380e);
            }
        }

        private C1380e(short s, String str) {
            this.f860l = (short) s;
            this.f861m = str;
        }

        public short mo1020a() {
            return this.f860l;
        }

        public String m1052b() {
            return this.f861m;
        }
    }

    static {
        bvD.put(C1341b.class, new bW());
        bvD.put(dB.class, new cW());
        Map enumMap = new EnumMap(C1380e.class);
        enumMap.put(C1380e.TIME_ZONE, new cv("time_zone", (byte) 2, new cw((byte) 8)));
        enumMap.put(C1380e.LANGUAGE, new cv("language", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1380e.COUNTRY, new cv("country", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1380e.LATITUDE, new cv("latitude", (byte) 2, new cw((byte) 4)));
        enumMap.put(C1380e.LONGITUDE, new cv("longitude", (byte) 2, new cw((byte) 4)));
        enumMap.put(C1380e.CARRIER, new cv("carrier", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1380e.LATENCY, new cv("latency", (byte) 2, new cw((byte) 8)));
        enumMap.put(C1380e.DISPLAY_NAME, new cv("display_name", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1380e.ACCESS_TYPE, new cv("access_type", (byte) 2, new cu((byte) 16, an.class)));
        enumMap.put(C1380e.ACCESS_SUBTYPE, new cv("access_subtype", (byte) 2, new cw((byte) 11)));
        bvE = Collections.unmodifiableMap(enumMap);
        cv.bUa(bh.class, bvE);
    }

    public bh m1053a(int i) {
        this.f864a = i;
        m1055a(true);
        return this;
    }

    public boolean m1057e() {
        return aN.bVw(this.f862B, 0);
    }

    public void m1055a(boolean z) {
        this.f862B = (byte) aN.bVz(this.f862B, 0, z);
    }

    public bh m1054a(String str) {
        this.f865b = str;
        return this;
    }

    public boolean m1058i() {
        return this.f865b != null;
    }

    public void bST(boolean z) {
        if (!z) {
            this.f865b = null;
        }
    }

    public bh m1056b(String str) {
        this.f866c = str;
        return this;
    }

    public boolean m1059l() {
        return this.f866c != null;
    }

    public void bSU(boolean z) {
        if (!z) {
            this.f866c = null;
        }
    }

    public boolean bSV() {
        return aN.bVw(this.f862B, 1);
    }

    public void bSW(boolean z) {
        this.f862B = (byte) aN.bVz(this.f862B, 1, z);
    }

    public boolean bSX() {
        return aN.bVw(this.f862B, 2);
    }

    public void bSY(boolean z) {
        this.f862B = (byte) aN.bVz(this.f862B, 2, z);
    }

    public bh bSZ(String str) {
        this.f869f = str;
        return this;
    }

    public boolean bTa() {
        return this.f869f != null;
    }

    public void bTb(boolean z) {
        if (!z) {
            this.f869f = null;
        }
    }

    public boolean bTc() {
        return aN.bVw(this.f862B, 3);
    }

    public void bTd(boolean z) {
        this.f862B = (byte) aN.bVz(this.f862B, 3, z);
    }

    public boolean bTe() {
        return this.f871h != null;
    }

    public void bTf(boolean z) {
        if (!z) {
            this.f871h = null;
        }
    }

    public bh bTg(an anVar) {
        this.f872i = anVar;
        return this;
    }

    public boolean bTh() {
        return this.f872i != null;
    }

    public void bTi(boolean z) {
        if (!z) {
            this.f872i = null;
        }
    }

    public bh bTj(String str) {
        this.f873j = str;
        return this;
    }

    public boolean bTk() {
        return this.f873j != null;
    }

    public void bTl(boolean z) {
        if (!z) {
            this.f873j = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bvD.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bvD.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("MiscInfo(");
        Object obj = 1;
        if (m1057e()) {
            stringBuilder.append("time_zone:");
            stringBuilder.append(this.f864a);
            obj = null;
        }
        if (m1058i()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("language:");
            if (this.f865b != null) {
                stringBuilder.append(this.f865b);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (m1059l()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("country:");
            if (this.f866c != null) {
                stringBuilder.append(this.f866c);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bSV()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("latitude:");
            stringBuilder.append(this.f867d);
            obj = null;
        }
        if (bSX()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("longitude:");
            stringBuilder.append(this.f868e);
            obj = null;
        }
        if (bTa()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("carrier:");
            if (this.f869f != null) {
                stringBuilder.append(this.f869f);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bTc()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("latency:");
            stringBuilder.append(this.f870g);
            obj = null;
        }
        if (bTe()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("display_name:");
            if (this.f871h != null) {
                stringBuilder.append(this.f871h);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bTh()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("access_type:");
            if (this.f872i != null) {
                stringBuilder.append(this.f872i);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bTk()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("access_subtype:");
            if (this.f873j != null) {
                stringBuilder.append(this.f873j);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bTm() {
    }
}
