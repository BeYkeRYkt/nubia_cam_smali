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

public class be implements Serializable, Cloneable, cj {
    private static final aP byh = new aP("InstantMsg");
    private static final cB byi = new cB("id", (byte) 11, (short) 1);
    private static final cB byj = new cB("errors", (byte) 15, (short) 2);
    private static final cB byk = new cB("events", (byte) 15, (short) 3);
    private static final cB byl = new cB("game_events", (byte) 15, (short) 4);
    private static final Map bym = new HashMap();
    public static final Map byn;
    public String f842a;
    public List f843b;
    public List f844c;
    public List f845d;
    private C1377e[] f846l = new C1377e[]{C1377e.ERRORS, C1377e.EVENTS, C1377e.GAME_EVENTS};

    public enum C1377e implements aF {
        ID((short) 1, "id"),
        ERRORS((short) 2, "errors"),
        EVENTS((short) 3, "events"),
        GAME_EVENTS((short) 4, "game_events");
        
        private static final Map bAZ = null;
        private final short f840f;
        private final String f841g;

        static {
            bAZ = new HashMap();
            Iterator it = EnumSet.allOf(C1377e.class).iterator();
            while (it.hasNext()) {
                C1377e c1377e = (C1377e) it.next();
                bAZ.put(c1377e.m1027b(), c1377e);
            }
        }

        private C1377e(short s, String str) {
            this.f840f = (short) s;
            this.f841g = str;
        }

        public short mo1020a() {
            return this.f840f;
        }

        public String m1027b() {
            return this.f841g;
        }
    }

    static {
        bym.put(C1341b.class, new cH());
        bym.put(dB.class, new cZ());
        Map enumMap = new EnumMap(C1377e.class);
        enumMap.put(C1377e.ID, new cv("id", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1377e.ERRORS, new cv("errors", (byte) 2, new cx((byte) 15, new da((byte) 12, av.class))));
        enumMap.put(C1377e.EVENTS, new cv("events", (byte) 2, new cx((byte) 15, new da((byte) 12, ax.class))));
        enumMap.put(C1377e.GAME_EVENTS, new cv("game_events", (byte) 2, new cx((byte) 15, new da((byte) 12, ax.class))));
        byn = Collections.unmodifiableMap(enumMap);
        cv.bUa(be.class, byn);
    }

    public String m1030c() {
        return this.f842a;
    }

    public be m1028a(String str) {
        this.f842a = str;
        return this;
    }

    public void m1029a(boolean z) {
        if (!z) {
            this.f842a = null;
        }
    }

    public void bXf(av avVar) {
        if (this.f843b == null) {
            this.f843b = new ArrayList();
        }
        this.f843b.add(avVar);
    }

    public boolean m1031k() {
        return this.f843b != null;
    }

    public void bXg(boolean z) {
        if (!z) {
            this.f843b = null;
        }
    }

    public int m1032l() {
        return this.f844c != null ? this.f844c.size() : 0;
    }

    public void bXh(ax axVar) {
        if (this.f844c == null) {
            this.f844c = new ArrayList();
        }
        this.f844c.add(axVar);
    }

    public List m1033n() {
        return this.f844c;
    }

    public boolean bXi() {
        return this.f844c != null;
    }

    public void bXj(boolean z) {
        if (!z) {
            this.f844c = null;
        }
    }

    public int bXk() {
        return this.f845d != null ? this.f845d.size() : 0;
    }

    public void bXl(ax axVar) {
        if (this.f845d == null) {
            this.f845d = new ArrayList();
        }
        this.f845d.add(axVar);
    }

    public List bXm() {
        return this.f845d;
    }

    public boolean bXn() {
        return this.f845d != null;
    }

    public void bXo(boolean z) {
        if (!z) {
            this.f845d = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bym.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bym.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("InstantMsg(");
        stringBuilder.append("id:");
        if (this.f842a != null) {
            stringBuilder.append(this.f842a);
        } else {
            stringBuilder.append("null");
        }
        if (m1031k()) {
            stringBuilder.append(", ");
            stringBuilder.append("errors:");
            if (this.f843b != null) {
                stringBuilder.append(this.f843b);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bXi()) {
            stringBuilder.append(", ");
            stringBuilder.append("events:");
            if (this.f844c != null) {
                stringBuilder.append(this.f844c);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bXn()) {
            stringBuilder.append(", ");
            stringBuilder.append("game_events:");
            if (this.f845d != null) {
                stringBuilder.append(this.f845d);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bXp() {
        if (this.f842a == null) {
            throw new dj("Required field 'id' was not present! Struct: " + toString());
        }
    }
}
