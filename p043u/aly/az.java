package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class az implements Serializable, Cloneable, cj {
    private static final aP bwf = new aP("IdJournal");
    private static final cB bwg = new cB("domain", (byte) 11, (short) 1);
    private static final cB bwh = new cB("old_id", (byte) 11, (short) 2);
    private static final cB bwi = new cB("new_id", (byte) 11, (short) 3);
    private static final cB bwj = new cB("ts", (byte) 10, (short) 4);
    private static final Map bwk = new HashMap();
    public static final Map bwl;
    public String f780a;
    public String f781b;
    public String f782c;
    public long f783d;
    private byte f784m = (byte) 0;
    private C1372e[] f785n = new C1372e[]{C1372e.OLD_ID};

    public enum C1372e implements aF {
        DOMAIN((short) 1, "domain"),
        OLD_ID((short) 2, "old_id"),
        NEW_ID((short) 3, "new_id"),
        TS((short) 4, "ts");
        
        private static final Map bwu = null;
        private final short f778f;
        private final String f779g;

        static {
            bwu = new HashMap();
            Iterator it = EnumSet.allOf(C1372e.class).iterator();
            while (it.hasNext()) {
                C1372e c1372e = (C1372e) it.next();
                bwu.put(c1372e.m943b(), c1372e);
            }
        }

        private C1372e(short s, String str) {
            this.f778f = (short) s;
            this.f779g = str;
        }

        public short mo1020a() {
            return this.f778f;
        }

        public String m943b() {
            return this.f779g;
        }
    }

    static {
        bwk.put(C1341b.class, new aS());
        bwk.put(dB.class, new C1389c());
        Map enumMap = new EnumMap(C1372e.class);
        enumMap.put(C1372e.DOMAIN, new cv("domain", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1372e.OLD_ID, new cv("old_id", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1372e.NEW_ID, new cv("new_id", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1372e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        bwl = Collections.unmodifiableMap(enumMap);
        cv.bUa(az.class, bwl);
    }

    public az m945a(String str) {
        this.f780a = str;
        return this;
    }

    public void m946a(boolean z) {
        if (!z) {
            this.f780a = null;
        }
    }

    public az m947b(String str) {
        this.f781b = str;
        return this;
    }

    public boolean m948i() {
        return this.f781b != null;
    }

    public void bUb(boolean z) {
        if (!z) {
            this.f781b = null;
        }
    }

    public az bUc(String str) {
        this.f782c = str;
        return this;
    }

    public void bUd(boolean z) {
        if (!z) {
            this.f782c = null;
        }
    }

    public az m944a(long j) {
        this.f783d = j;
        bUf(true);
        return this;
    }

    public boolean bUe() {
        return aN.bVw(this.f784m, 0);
    }

    public void bUf(boolean z) {
        this.f784m = (byte) aN.bVz(this.f784m, 0, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bwk.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bwk.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("IdJournal(");
        stringBuilder.append("domain:");
        if (this.f780a != null) {
            stringBuilder.append(this.f780a);
        } else {
            stringBuilder.append("null");
        }
        if (m948i()) {
            stringBuilder.append(", ");
            stringBuilder.append("old_id:");
            if (this.f781b != null) {
                stringBuilder.append(this.f781b);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("new_id:");
        if (this.f782c != null) {
            stringBuilder.append(this.f782c);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.f783d);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bUg() {
        if (this.f780a == null) {
            throw new dj("Required field 'domain' was not present! Struct: " + toString());
        } else if (this.f782c == null) {
            throw new dj("Required field 'new_id' was not present! Struct: " + toString());
        }
    }
}
