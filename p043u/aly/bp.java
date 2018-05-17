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

public class bp implements Serializable, Cloneable, cj {
    private static final aP bxS = new aP("UALogEntry");
    private static final cB bxT = new cB("client_stats", (byte) 12, (short) 1);
    private static final cB bxU = new cB("app_info", (byte) 12, (short) 2);
    private static final cB bxV = new cB("device_info", (byte) 12, (short) 3);
    private static final cB bxW = new cB("misc_info", (byte) 12, (short) 4);
    private static final cB bxX = new cB("activate_msg", (byte) 12, (short) 5);
    private static final cB bxY = new cB("instant_msgs", (byte) 15, (short) 6);
    private static final cB bxZ = new cB("sessions", (byte) 15, (short) 7);
    private static final cB bya = new cB("imprint", (byte) 12, (short) 8);
    private static final cB byb = new cB("id_tracking", (byte) 12, (short) 9);
    private static final cB byc = new cB("active_user", (byte) 12, (short) 10);
    private static final cB byd = new cB("control_policy", (byte) 12, (short) 11);
    private static final cB bye = new cB("group_info", (byte) 13, (short) 12);
    private static final Map byf = new HashMap();
    public static final Map byg;
    private C1387e[] f906B = new C1387e[]{C1387e.ACTIVATE_MSG, C1387e.INSTANT_MSGS, C1387e.SESSIONS, C1387e.IMPRINT, C1387e.ID_TRACKING, C1387e.ACTIVE_USER, C1387e.CONTROL_POLICY, C1387e.GROUP_INFO};
    public ar f907a;
    public aq f908b;
    public at f909c;
    public bh f910d;
    public ao f911e;
    public List f912f;
    public List f913g;
    public bc f914h;
    public bb f915i;
    public ap f916j;
    public as f917k;
    public Map f918l;

    public enum C1387e implements aF {
        CLIENT_STATS((short) 1, "client_stats"),
        APP_INFO((short) 2, "app_info"),
        DEVICE_INFO((short) 3, "device_info"),
        MISC_INFO((short) 4, "misc_info"),
        ACTIVATE_MSG((short) 5, "activate_msg"),
        INSTANT_MSGS((short) 6, "instant_msgs"),
        SESSIONS((short) 7, "sessions"),
        IMPRINT((short) 8, "imprint"),
        ID_TRACKING((short) 9, "id_tracking"),
        ACTIVE_USER((short) 10, "active_user"),
        CONTROL_POLICY((short) 11, "control_policy"),
        GROUP_INFO((short) 12, "group_info");
        
        private static final Map bBS = null;
        private final short f904n;
        private final String f905o;

        static {
            bBS = new HashMap();
            Iterator it = EnumSet.allOf(C1387e.class).iterator();
            while (it.hasNext()) {
                C1387e c1387e = (C1387e) it.next();
                bBS.put(c1387e.m1105b(), c1387e);
            }
        }

        private C1387e(short s, String str) {
            this.f904n = (short) s;
            this.f905o = str;
        }

        public short mo1020a() {
            return this.f904n;
        }

        public String m1105b() {
            return this.f905o;
        }
    }

    static {
        byf.put(C1341b.class, new cJ());
        byf.put(dB.class, new cR());
        Map enumMap = new EnumMap(C1387e.class);
        enumMap.put(C1387e.CLIENT_STATS, new cv("client_stats", (byte) 1, new da((byte) 12, ar.class)));
        enumMap.put(C1387e.APP_INFO, new cv("app_info", (byte) 1, new da((byte) 12, aq.class)));
        enumMap.put(C1387e.DEVICE_INFO, new cv("device_info", (byte) 1, new da((byte) 12, at.class)));
        enumMap.put(C1387e.MISC_INFO, new cv("misc_info", (byte) 1, new da((byte) 12, bh.class)));
        enumMap.put(C1387e.ACTIVATE_MSG, new cv("activate_msg", (byte) 2, new da((byte) 12, ao.class)));
        enumMap.put(C1387e.INSTANT_MSGS, new cv("instant_msgs", (byte) 2, new cx((byte) 15, new da((byte) 12, be.class))));
        enumMap.put(C1387e.SESSIONS, new cv("sessions", (byte) 2, new cx((byte) 15, new da((byte) 12, bn.class))));
        enumMap.put(C1387e.IMPRINT, new cv("imprint", (byte) 2, new da((byte) 12, bc.class)));
        enumMap.put(C1387e.ID_TRACKING, new cv("id_tracking", (byte) 2, new da((byte) 12, bb.class)));
        enumMap.put(C1387e.ACTIVE_USER, new cv("active_user", (byte) 2, new da((byte) 12, ap.class)));
        enumMap.put(C1387e.CONTROL_POLICY, new cv("control_policy", (byte) 2, new da((byte) 12, as.class)));
        enumMap.put(C1387e.GROUP_INFO, new cv("group_info", (byte) 2, new cy((byte) 13, new cw((byte) 11), new cw((byte) 8))));
        byg = Collections.unmodifiableMap(enumMap);
        cv.bUa(bp.class, byg);
    }

    public ar m1110c() {
        return this.f907a;
    }

    public bp bWk(ar arVar) {
        this.f907a = arVar;
        return this;
    }

    public void m1109a(boolean z) {
        if (!z) {
            this.f907a = null;
        }
    }

    public aq m1111f() {
        return this.f908b;
    }

    public bp bWl(aq aqVar) {
        this.f908b = aqVar;
        return this;
    }

    public void bWm(boolean z) {
        if (!z) {
            this.f908b = null;
        }
    }

    public at m1112j() {
        return this.f909c;
    }

    public bp bWn(at atVar) {
        this.f909c = atVar;
        return this;
    }

    public void bWo(boolean z) {
        if (!z) {
            this.f909c = null;
        }
    }

    public bh m1113m() {
        return this.f910d;
    }

    public bp bWp(bh bhVar) {
        this.f910d = bhVar;
        return this;
    }

    public void bWq(boolean z) {
        if (!z) {
            this.f910d = null;
        }
    }

    public bp bWr(ao aoVar) {
        this.f911e = aoVar;
        return this;
    }

    public boolean bWs() {
        return this.f911e != null;
    }

    public void bWt(boolean z) {
        if (!z) {
            this.f911e = null;
        }
    }

    public int bWu() {
        return this.f912f != null ? this.f912f.size() : 0;
    }

    public void bWv(be beVar) {
        if (this.f912f == null) {
            this.f912f = new ArrayList();
        }
        this.f912f.add(beVar);
    }

    public List bWw() {
        return this.f912f;
    }

    public bp m1108a(List list) {
        this.f912f = list;
        return this;
    }

    public boolean bWx() {
        return this.f912f != null;
    }

    public void bWy(boolean z) {
        if (!z) {
            this.f912f = null;
        }
    }

    public void bWz(bn bnVar) {
        if (this.f913g == null) {
            this.f913g = new ArrayList();
        }
        this.f913g.add(bnVar);
    }

    public List bWA() {
        return this.f913g;
    }

    public bp bWB(List list) {
        this.f913g = list;
        return this;
    }

    public boolean bWC() {
        return this.f913g != null;
    }

    public void bWD(boolean z) {
        if (!z) {
            this.f913g = null;
        }
    }

    public bp bWE(bc bcVar) {
        this.f914h = bcVar;
        return this;
    }

    public boolean bWF() {
        return this.f914h != null;
    }

    public void bWG(boolean z) {
        if (!z) {
            this.f914h = null;
        }
    }

    public bp bWH(bb bbVar) {
        this.f915i = bbVar;
        return this;
    }

    public boolean bWI() {
        return this.f915i != null;
    }

    public void bWJ(boolean z) {
        if (!z) {
            this.f915i = null;
        }
    }

    public bp bWK(ap apVar) {
        this.f916j = apVar;
        return this;
    }

    public boolean bWL() {
        return this.f916j != null;
    }

    public void bWM(boolean z) {
        if (!z) {
            this.f916j = null;
        }
    }

    public bp bWN(as asVar) {
        this.f917k = asVar;
        return this;
    }

    public boolean bWO() {
        return this.f917k != null;
    }

    public void bWP(boolean z) {
        if (!z) {
            this.f917k = null;
        }
    }

    public bp bWQ(Map map) {
        this.f918l = map;
        return this;
    }

    public boolean bWR() {
        return this.f918l != null;
    }

    public void bWS(boolean z) {
        if (!z) {
            this.f918l = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) byf.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) byf.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("UALogEntry(");
        stringBuilder.append("client_stats:");
        if (this.f907a != null) {
            stringBuilder.append(this.f907a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("app_info:");
        if (this.f908b != null) {
            stringBuilder.append(this.f908b);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("device_info:");
        if (this.f909c != null) {
            stringBuilder.append(this.f909c);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("misc_info:");
        if (this.f910d != null) {
            stringBuilder.append(this.f910d);
        } else {
            stringBuilder.append("null");
        }
        if (bWs()) {
            stringBuilder.append(", ");
            stringBuilder.append("activate_msg:");
            if (this.f911e != null) {
                stringBuilder.append(this.f911e);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWx()) {
            stringBuilder.append(", ");
            stringBuilder.append("instant_msgs:");
            if (this.f912f != null) {
                stringBuilder.append(this.f912f);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWC()) {
            stringBuilder.append(", ");
            stringBuilder.append("sessions:");
            if (this.f913g != null) {
                stringBuilder.append(this.f913g);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWF()) {
            stringBuilder.append(", ");
            stringBuilder.append("imprint:");
            if (this.f914h != null) {
                stringBuilder.append(this.f914h);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWI()) {
            stringBuilder.append(", ");
            stringBuilder.append("id_tracking:");
            if (this.f915i != null) {
                stringBuilder.append(this.f915i);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWL()) {
            stringBuilder.append(", ");
            stringBuilder.append("active_user:");
            if (this.f916j != null) {
                stringBuilder.append(this.f916j);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWO()) {
            stringBuilder.append(", ");
            stringBuilder.append("control_policy:");
            if (this.f917k != null) {
                stringBuilder.append(this.f917k);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bWR()) {
            stringBuilder.append(", ");
            stringBuilder.append("group_info:");
            if (this.f918l != null) {
                stringBuilder.append(this.f918l);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bWT() {
        if (this.f907a == null) {
            throw new dj("Required field 'client_stats' was not present! Struct: " + toString());
        } else if (this.f908b == null) {
            throw new dj("Required field 'app_info' was not present! Struct: " + toString());
        } else if (this.f909c == null) {
            throw new dj("Required field 'device_info' was not present! Struct: " + toString());
        } else if (this.f910d != null) {
            if (this.f907a != null) {
                this.f907a.m918m();
            }
            if (this.f908b != null) {
                this.f908b.bVb();
            }
            if (this.f909c != null) {
                this.f909c.caq();
            }
            if (this.f910d != null) {
                this.f910d.bTm();
            }
            if (this.f911e != null) {
                this.f911e.m894f();
            }
            if (this.f914h != null) {
                this.f914h.m1015n();
            }
            if (this.f915i != null) {
                this.f915i.bQJ();
            }
            if (this.f916j != null) {
                this.f916j.m901j();
            }
            if (this.f917k != null) {
                this.f917k.m925f();
            }
        } else {
            throw new dj("Required field 'misc_info' was not present! Struct: " + toString());
        }
    }
}
