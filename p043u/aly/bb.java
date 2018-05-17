package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bb implements Serializable, Cloneable, cj {
    private static final cB btA = new cB("checksum", (byte) 11, (short) 3);
    private static final Map btB = new HashMap();
    private static final aP btx = new aP("IdTracking");
    private static final cB bty = new cB("snapshots", (byte) 13, (short) 1);
    private static final cB btz = new cB("journals", (byte) 15, (short) 2);
    public static final Map f818d;
    public Map f819a;
    public List f820b;
    public String f821c;
    private C1374e[] f822j = new C1374e[]{C1374e.JOURNALS, C1374e.CHECKSUM};

    public enum C1374e implements aF {
        SNAPSHOTS((short) 1, "snapshots"),
        JOURNALS((short) 2, "journals"),
        CHECKSUM((short) 3, "checksum");
        
        private static final Map f815d = null;
        private final short f816e;
        private final String f817f;

        static {
            f815d = new HashMap();
            Iterator it = EnumSet.allOf(C1374e.class).iterator();
            while (it.hasNext()) {
                C1374e c1374e = (C1374e) it.next();
                f815d.put(c1374e.m999b(), c1374e);
            }
        }

        private C1374e(short s, String str) {
            this.f816e = (short) s;
            this.f817f = str;
        }

        public short mo1020a() {
            return this.f816e;
        }

        public String m999b() {
            return this.f817f;
        }
    }

    static {
        btB.put(C1341b.class, new cQ());
        btB.put(dB.class, new dG());
        Map enumMap = new EnumMap(C1374e.class);
        enumMap.put(C1374e.SNAPSHOTS, new cv("snapshots", (byte) 1, new cy((byte) 13, new cw((byte) 11), new da((byte) 12, ba.class))));
        enumMap.put(C1374e.JOURNALS, new cv("journals", (byte) 2, new cx((byte) 15, new da((byte) 12, az.class))));
        enumMap.put(C1374e.CHECKSUM, new cv("checksum", (byte) 2, new cw((byte) 11)));
        f818d = Collections.unmodifiableMap(enumMap);
        cv.bUa(bb.class, f818d);
    }

    public Map m1002d() {
        return this.f819a;
    }

    public bb bQF(Map map) {
        this.f819a = map;
        return this;
    }

    public void m1001a(boolean z) {
        if (!z) {
            this.f819a = null;
        }
    }

    public List m1003j() {
        return this.f820b;
    }

    public bb m1000a(List list) {
        this.f820b = list;
        return this;
    }

    public boolean m1004l() {
        return this.f820b != null;
    }

    public void bQG(boolean z) {
        if (!z) {
            this.f820b = null;
        }
    }

    public boolean bQH() {
        return this.f821c != null;
    }

    public void bQI(boolean z) {
        if (!z) {
            this.f821c = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) btB.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) btB.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("IdTracking(");
        stringBuilder.append("snapshots:");
        if (this.f819a != null) {
            stringBuilder.append(this.f819a);
        } else {
            stringBuilder.append("null");
        }
        if (m1004l()) {
            stringBuilder.append(", ");
            stringBuilder.append("journals:");
            if (this.f820b != null) {
                stringBuilder.append(this.f820b);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bQH()) {
            stringBuilder.append(", ");
            stringBuilder.append("checksum:");
            if (this.f821c != null) {
                stringBuilder.append(this.f821c);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bQJ() {
        if (this.f819a == null) {
            throw new dj("Required field 'snapshots' was not present! Struct: " + toString());
        }
    }
}
