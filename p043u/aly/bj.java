package p043u.aly;

import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class bj extends ct {
    public static final Map f881a;
    private static final aP bxh = new aP("PropertyValue");
    private static final cB bxi = new cB("string_value", (byte) 11, (short) 1);
    private static final cB bxj = new cB("long_value", (byte) 10, (short) 2);

    public enum C1382a implements aF {
        STRING_VALUE((short) 1, "string_value"),
        LONG_VALUE((short) 2, "long_value");
        
        private static final Map btq = null;
        private final short f876d;
        private final String f877e;

        static {
            btq = new HashMap();
            Iterator it = EnumSet.allOf(C1382a.class).iterator();
            while (it.hasNext()) {
                C1382a c1382a = (C1382a) it.next();
                btq.put(c1382a.m1064b(), c1382a);
            }
        }

        public static C1382a m1062a(int i) {
            switch (i) {
                case 1:
                    return STRING_VALUE;
                case 2:
                    return LONG_VALUE;
                default:
                    return null;
            }
        }

        public static C1382a bQB(int i) {
            C1382a a = C1382a.m1062a(i);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        private C1382a(short s, String str) {
            this.f876d = (short) s;
            this.f877e = str;
        }

        public short mo1020a() {
            return this.f876d;
        }

        public String m1064b() {
            return this.f877e;
        }
    }

    protected /* bridge */ /* synthetic */ cB bUD(aF aFVar) {
        return bVF((C1382a) aFVar);
    }

    protected /* synthetic */ aF bUE(short s) {
        return bVG(s);
    }

    static {
        Map enumMap = new EnumMap(C1382a.class);
        enumMap.put(C1382a.STRING_VALUE, new cv("string_value", (byte) 3, new cw((byte) 11)));
        enumMap.put(C1382a.LONG_VALUE, new cv("long_value", (byte) 3, new cw((byte) 10)));
        f881a = Collections.unmodifiableMap(enumMap);
        cv.bUa(bj.class, f881a);
    }

    protected Object bUz(dl dlVar, cB cBVar) {
        C1382a a = C1382a.m1062a(cBVar.f936c);
        if (a == null) {
            return null;
        }
        switch (bQ.f801a[a.ordinal()]) {
            case 1:
                if (cBVar.f935b == bxi.f935b) {
                    return dlVar.bRh();
                }
                C1362Z.bUm(dlVar, cBVar.f935b);
                return null;
            case 2:
                if (cBVar.f935b == bxj.f935b) {
                    return Long.valueOf(dlVar.bRf());
                }
                C1362Z.bUm(dlVar, cBVar.f935b);
                return null;
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
        }
    }

    protected void bUA(dl dlVar) {
        switch (bQ.f801a[((C1382a) this.c).ordinal()]) {
            case 1:
                dlVar.mo973a((String) this.b);
                return;
            case 2:
                dlVar.mo972a(((Long) this.b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.c);
        }
    }

    protected Object bUB(dl dlVar, short s) {
        C1382a a = C1382a.m1062a(s);
        if (a == null) {
            throw new dj("Couldn't find a field with field id " + s);
        }
        switch (bQ.f801a[a.ordinal()]) {
            case 1:
                return dlVar.bRh();
            case 2:
                return Long.valueOf(dlVar.bRf());
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
        }
    }

    protected void bUC(dl dlVar) {
        switch (bQ.f801a[((C1382a) this.c).ordinal()]) {
            case 1:
                dlVar.mo973a((String) this.b);
                return;
            case 2:
                dlVar.mo972a(((Long) this.b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.c);
        }
    }

    protected cB bVF(C1382a c1382a) {
        switch (bQ.f801a[c1382a.ordinal()]) {
            case 1:
                return bxi;
            case 2:
                return bxj;
            default:
                throw new IllegalArgumentException("Unknown field id " + c1382a);
        }
    }

    protected aP mo1027c() {
        return bxh;
    }

    protected C1382a bVG(short s) {
        return C1382a.bQB(s);
    }

    public void m1069b(String str) {
        if (str != null) {
            this.c = C1382a.STRING_VALUE;
            this.b = str;
            return;
        }
        throw new NullPointerException();
    }

    public void bVH(long j) {
        this.c = C1382a.LONG_VALUE;
        this.b = Long.valueOf(j);
    }

    public boolean equals(Object obj) {
        if (obj instanceof bj) {
            return bVI((bj) obj);
        }
        return false;
    }

    public boolean bVI(bj bjVar) {
        return bjVar != null && m1066i() == bjVar.m1066i() && m1067j().equals(bjVar.m1067j());
    }

    public int hashCode() {
        return 0;
    }
}
