package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ar implements Serializable, Cloneable, cj {
    private static final aP bzo = new aP("ClientStats");
    private static final cB bzp = new cB("successful_requests", (byte) 8, (short) 1);
    private static final cB bzq = new cB("failed_requests", (byte) 8, (short) 2);
    private static final cB bzr = new cB("last_request_spent_ms", (byte) 8, (short) 3);
    private static final Map bzs = new HashMap();
    public static final Map f738d;
    public int f739a = 0;
    public int f740b = 0;
    public int f741c;
    private byte f742m = (byte) 0;
    private C1367e[] f743n = new C1367e[]{C1367e.LAST_REQUEST_SPENT_MS};

    public enum C1367e implements aF {
        SUCCESSFUL_REQUESTS((short) 1, "successful_requests"),
        FAILED_REQUESTS((short) 2, "failed_requests"),
        LAST_REQUEST_SPENT_MS((short) 3, "last_request_spent_ms");
        
        private static final Map f735d = null;
        private final short f736e;
        private final String f737f;

        static {
            f735d = new HashMap();
            Iterator it = EnumSet.allOf(C1367e.class).iterator();
            while (it.hasNext()) {
                C1367e c1367e = (C1367e) it.next();
                f735d.put(c1367e.m911b(), c1367e);
            }
        }

        private C1367e(short s, String str) {
            this.f736e = (short) s;
            this.f737f = str;
        }

        public short mo1020a() {
            return this.f736e;
        }

        public String m911b() {
            return this.f737f;
        }
    }

    static {
        bzs.put(C1341b.class, new am());
        bzs.put(dB.class, new bv());
        Map enumMap = new EnumMap(C1367e.class);
        enumMap.put(C1367e.SUCCESSFUL_REQUESTS, new cv("successful_requests", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1367e.FAILED_REQUESTS, new cv("failed_requests", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1367e.LAST_REQUEST_SPENT_MS, new cv("last_request_spent_ms", (byte) 2, new cw((byte) 8)));
        f738d = Collections.unmodifiableMap(enumMap);
        cv.bUa(ar.class, f738d);
    }

    public ar m913a(int i) {
        this.f739a = i;
        m914a(true);
        return this;
    }

    public boolean m915e() {
        return aN.bVw(this.f742m, 0);
    }

    public void m914a(boolean z) {
        this.f742m = (byte) aN.bVz(this.f742m, 0, z);
    }

    public ar bYE(int i) {
        this.f740b = i;
        bYF(true);
        return this;
    }

    public boolean m916i() {
        return aN.bVw(this.f742m, 1);
    }

    public void bYF(boolean z) {
        this.f742m = (byte) aN.bVz(this.f742m, 1, z);
    }

    public ar bYG(int i) {
        this.f741c = i;
        bYH(true);
        return this;
    }

    public boolean m917l() {
        return aN.bVw(this.f742m, 2);
    }

    public void bYH(boolean z) {
        this.f742m = (byte) aN.bVz(this.f742m, 2, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bzs.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bzs.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientStats(");
        stringBuilder.append("successful_requests:");
        stringBuilder.append(this.f739a);
        stringBuilder.append(", ");
        stringBuilder.append("failed_requests:");
        stringBuilder.append(this.f740b);
        if (m917l()) {
            stringBuilder.append(", ");
            stringBuilder.append("last_request_spent_ms:");
            stringBuilder.append(this.f741c);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m918m() {
    }
}
