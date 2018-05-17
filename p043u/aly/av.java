package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class av implements Serializable, Cloneable, cj {
    private static final aP bBU = new aP("Error");
    private static final cB bBV = new cB("ts", (byte) 10, (short) 1);
    private static final cB bBW = new cB("context", (byte) 11, (short) 2);
    private static final cB bBX = new cB("source", (byte) 8, (short) 3);
    private static final Map bBY = new HashMap();
    public static final Map f691d;
    public long f692a;
    public String f693b;
    public aw f694c;
    private byte f695k = (byte) 0;
    private C1370e[] f696l = new C1370e[]{C1370e.SOURCE};

    public enum C1370e implements aF {
        TS((short) 1, "ts"),
        CONTEXT((short) 2, "context"),
        SOURCE((short) 3, "source");
        
        private static final Map f771d = null;
        private final short f772e;
        private final String f773f;

        static {
            f771d = new HashMap();
            Iterator it = EnumSet.allOf(C1370e.class).iterator();
            while (it.hasNext()) {
                C1370e c1370e = (C1370e) it.next();
                f771d.put(c1370e.m937b(), c1370e);
            }
        }

        private C1370e(short s, String str) {
            this.f772e = (short) s;
            this.f773f = str;
        }

        public short mo1020a() {
            return this.f772e;
        }

        public String m937b() {
            return this.f773f;
        }
    }

    static {
        bBY.put(C1341b.class, new de());
        bBY.put(dB.class, new dE());
        Map enumMap = new EnumMap(C1370e.class);
        enumMap.put(C1370e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(C1370e.CONTEXT, new cv("context", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1370e.SOURCE, new cv("source", (byte) 2, new cu((byte) 16, aw.class)));
        f691d = Collections.unmodifiableMap(enumMap);
        cv.bUa(av.class, f691d);
    }

    public av m862a(long j) {
        this.f692a = j;
        cbL(true);
        return this;
    }

    public boolean m864e() {
        return aN.bVw(this.f695k, 0);
    }

    public void cbL(boolean z) {
        this.f695k = (byte) aN.bVz(this.f695k, 0, z);
    }

    public av m863a(String str) {
        this.f693b = str;
        return this;
    }

    public void cbM(boolean z) {
        if (!z) {
            this.f693b = null;
        }
    }

    public av cbN(aw awVar) {
        this.f694c = awVar;
        return this;
    }

    public boolean m865l() {
        return this.f694c != null;
    }

    public void cbO(boolean z) {
        if (!z) {
            this.f694c = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bBY.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bBY.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Error(");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f692a);
        stringBuilder.append(", ");
        stringBuilder.append("context:");
        if (this.f693b != null) {
            stringBuilder.append(this.f693b);
        } else {
            stringBuilder.append("null");
        }
        if (m865l()) {
            stringBuilder.append(", ");
            stringBuilder.append("source:");
            if (this.f694c != null) {
                stringBuilder.append(this.f694c);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m866m() {
        if (this.f693b == null) {
            throw new dj("Required field 'context' was not present! Struct: " + toString());
        }
    }
}
