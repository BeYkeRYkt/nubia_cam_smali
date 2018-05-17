package p043u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bn implements Serializable, Cloneable, cj {
    private static final cB buA = new cB("start_time", (byte) 10, (short) 2);
    private static final cB buB = new cB("end_time", (byte) 10, (short) 3);
    private static final cB buC = new cB("duration", (byte) 10, (short) 4);
    private static final cB buD = new cB("pages", (byte) 15, (short) 5);
    private static final cB buE = new cB("locations", (byte) 15, (short) 6);
    private static final cB buF = new cB("traffic", (byte) 12, (short) 7);
    private static final Map buG = new HashMap();
    public static final Map buH;
    private static final aP buy = new aP("Session");
    private static final cB buz = new cB("id", (byte) 11, (short) 1);
    public String f700a;
    public long f701b;
    public long f702c;
    public long f703d;
    public List f704e;
    public List f705f;
    public bo f706g;
    private byte f707u = (byte) 0;
    private C1385e[] f708v = new C1385e[]{C1385e.PAGES, C1385e.LOCATIONS, C1385e.TRAFFIC};

    public enum C1385e implements aF {
        ID((short) 1, "id"),
        START_TIME((short) 2, "start_time"),
        END_TIME((short) 3, "end_time"),
        DURATION((short) 4, "duration"),
        PAGES((short) 5, "pages"),
        LOCATIONS((short) 6, "locations"),
        TRAFFIC((short) 7, "traffic");
        
        private static final Map bvM = null;
        private final short f897i;
        private final String f898j;

        static {
            bvM = new HashMap();
            Iterator it = EnumSet.allOf(C1385e.class).iterator();
            while (it.hasNext()) {
                C1385e c1385e = (C1385e) it.next();
                bvM.put(c1385e.m1093b(), c1385e);
            }
        }

        private C1385e(short s, String str) {
            this.f897i = (short) s;
            this.f898j = str;
        }

        public short mo1020a() {
            return this.f897i;
        }

        public String m1093b() {
            return this.f898j;
        }
    }

    static {
        buG.put(C1341b.class, new bz());
        buG.put(dB.class, new C1390d());
        Map enumMap = new EnumMap(C1385e.class);
        enumMap.put(C1385e.ID, new cv("id", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1385e.START_TIME, new cv("start_time", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1385e.END_TIME, new cv("end_time", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1385e.DURATION, new cv("duration", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1385e.PAGES, new cv("pages", (byte) 2, new cx((byte) 15, new da((byte) 12, bi.class))));
        enumMap.put(C1385e.LOCATIONS, new cv("locations", (byte) 2, new cx((byte) 15, new da((byte) 12, bg.class))));
        enumMap.put(C1385e.TRAFFIC, new cv("traffic", (byte) 2, new da((byte) 12, bo.class)));
        buH = Collections.unmodifiableMap(enumMap);
        cv.bUa(bn.class, buH);
    }

    public bn m878a(String str) {
        this.f700a = str;
        return this;
    }

    public void m880a(boolean z) {
        if (!z) {
            this.f700a = null;
        }
    }

    public bn m877a(long j) {
        this.f701b = j;
        bRD(true);
        return this;
    }

    public boolean m881i() {
        return aN.bVw(this.f707u, 0);
    }

    public void bRD(boolean z) {
        this.f707u = (byte) aN.bVz(this.f707u, 0, z);
    }

    public bn bRE(long j) {
        this.f702c = j;
        bRF(true);
        return this;
    }

    public boolean m882l() {
        return aN.bVw(this.f707u, 1);
    }

    public void bRF(boolean z) {
        this.f707u = (byte) aN.bVz(this.f707u, 1, z);
    }

    public bn bRG(long j) {
        this.f703d = j;
        bRI(true);
        return this;
    }

    public boolean bRH() {
        return aN.bVw(this.f707u, 2);
    }

    public void bRI(boolean z) {
        this.f707u = (byte) aN.bVz(this.f707u, 2, z);
    }

    public int bRJ() {
        return this.f704e != null ? this.f704e.size() : 0;
    }

    public bn m879a(List list) {
        this.f704e = list;
        return this;
    }

    public boolean bRK() {
        return this.f704e != null;
    }

    public void bRL(boolean z) {
        if (!z) {
            this.f704e = null;
        }
    }

    public void bRM(bg bgVar) {
        if (this.f705f == null) {
            this.f705f = new ArrayList();
        }
        this.f705f.add(bgVar);
    }

    public bn bRN(List list) {
        this.f705f = list;
        return this;
    }

    public boolean bRO() {
        return this.f705f != null;
    }

    public void bRP(boolean z) {
        if (!z) {
            this.f705f = null;
        }
    }

    public bn bRQ(bo boVar) {
        this.f706g = boVar;
        return this;
    }

    public boolean bRR() {
        return this.f706g != null;
    }

    public void bRS(boolean z) {
        if (!z) {
            this.f706g = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) buG.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) buG.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Session(");
        stringBuilder.append("id:");
        if (this.f700a != null) {
            stringBuilder.append(this.f700a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("start_time:");
        stringBuilder.append(this.f701b);
        stringBuilder.append(", ");
        stringBuilder.append("end_time:");
        stringBuilder.append(this.f702c);
        stringBuilder.append(", ");
        stringBuilder.append("duration:");
        stringBuilder.append(this.f703d);
        if (bRK()) {
            stringBuilder.append(", ");
            stringBuilder.append("pages:");
            if (this.f704e != null) {
                stringBuilder.append(this.f704e);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bRO()) {
            stringBuilder.append(", ");
            stringBuilder.append("locations:");
            if (this.f705f != null) {
                stringBuilder.append(this.f705f);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bRR()) {
            stringBuilder.append(", ");
            stringBuilder.append("traffic:");
            if (this.f706g != null) {
                stringBuilder.append(this.f706g);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bRT() {
        if (this.f700a == null) {
            throw new dj("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f706g != null) {
            this.f706g.m1103j();
        }
    }
}
