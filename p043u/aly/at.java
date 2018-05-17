package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class at implements Serializable, Cloneable, cj {
    private static final aP bAA = new aP("DeviceInfo");
    private static final cB bAB = new cB("device_id", (byte) 11, (short) 1);
    private static final cB bAC = new cB("idmd5", (byte) 11, (short) 2);
    private static final cB bAD = new cB("mac_address", (byte) 11, (short) 3);
    private static final cB bAE = new cB("open_udid", (byte) 11, (short) 4);
    private static final cB bAF = new cB("model", (byte) 11, (short) 5);
    private static final cB bAG = new cB("cpu", (byte) 11, (short) 6);
    private static final cB bAH = new cB("os", (byte) 11, (short) 7);
    private static final cB bAI = new cB("os_version", (byte) 11, (short) 8);
    private static final cB bAJ = new cB("resolution", (byte) 12, (short) 9);
    private static final cB bAK = new cB("is_jailbroken", (byte) 2, (short) 10);
    private static final cB bAL = new cB("is_pirated", (byte) 2, (short) 11);
    private static final cB bAM = new cB("device_board", (byte) 11, (short) 12);
    private static final cB bAN = new cB("device_brand", (byte) 11, (short) 13);
    private static final cB bAO = new cB("device_manutime", (byte) 10, (short) 14);
    private static final cB bAP = new cB("device_manufacturer", (byte) 11, (short) 15);
    private static final cB bAQ = new cB("device_manuid", (byte) 11, (short) 16);
    private static final cB bAR = new cB("device_name", (byte) 11, (short) 17);
    private static final Map bAS = new HashMap();
    public static final Map bAT;
    private byte f752O = (byte) 0;
    private C1369e[] f753P = new C1369e[]{C1369e.DEVICE_ID, C1369e.IDMD5, C1369e.MAC_ADDRESS, C1369e.OPEN_UDID, C1369e.MODEL, C1369e.CPU, C1369e.OS, C1369e.OS_VERSION, C1369e.RESOLUTION, C1369e.IS_JAILBROKEN, C1369e.IS_PIRATED, C1369e.DEVICE_BOARD, C1369e.DEVICE_BRAND, C1369e.DEVICE_MANUTIME, C1369e.DEVICE_MANUFACTURER, C1369e.DEVICE_MANUID, C1369e.DEVICE_NAME};
    public String f754a;
    public String f755b;
    public String f756c;
    public String f757d;
    public String f758e;
    public String f759f;
    public String f760g;
    public String f761h;
    public bk f762i;
    public boolean f763j;
    public boolean f764k;
    public String f765l;
    public String f766m;
    public long f767n;
    public String f768o;
    public String f769p;
    public String f770q;

    public enum C1369e implements aF {
        DEVICE_ID((short) 1, "device_id"),
        IDMD5((short) 2, "idmd5"),
        MAC_ADDRESS((short) 3, "mac_address"),
        OPEN_UDID((short) 4, "open_udid"),
        MODEL((short) 5, "model"),
        CPU((short) 6, "cpu"),
        OS((short) 7, "os"),
        OS_VERSION((short) 8, "os_version"),
        RESOLUTION((short) 9, "resolution"),
        IS_JAILBROKEN((short) 10, "is_jailbroken"),
        IS_PIRATED((short) 11, "is_pirated"),
        DEVICE_BOARD((short) 12, "device_board"),
        DEVICE_BRAND((short) 13, "device_brand"),
        DEVICE_MANUTIME((short) 14, "device_manutime"),
        DEVICE_MANUFACTURER((short) 15, "device_manufacturer"),
        DEVICE_MANUID((short) 16, "device_manuid"),
        DEVICE_NAME((short) 17, "device_name");
        
        private static final Map bud = null;
        private final short f750s;
        private final String f751t;

        static {
            bud = new HashMap();
            Iterator it = EnumSet.allOf(C1369e.class).iterator();
            while (it.hasNext()) {
                C1369e c1369e = (C1369e) it.next();
                bud.put(c1369e.m927b(), c1369e);
            }
        }

        private C1369e(short s, String str) {
            this.f750s = (short) s;
            this.f751t = str;
        }

        public short mo1020a() {
            return this.f750s;
        }

        public String m927b() {
            return this.f751t;
        }
    }

    static {
        bAS.put(C1341b.class, new bV());
        bAS.put(dB.class, new C1358W());
        Map enumMap = new EnumMap(C1369e.class);
        enumMap.put(C1369e.DEVICE_ID, new cv("device_id", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.IDMD5, new cv("idmd5", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.MAC_ADDRESS, new cv("mac_address", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.OPEN_UDID, new cv("open_udid", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.MODEL, new cv("model", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.CPU, new cv("cpu", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.OS, new cv("os", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.OS_VERSION, new cv("os_version", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.RESOLUTION, new cv("resolution", (byte) 2, new da((byte) 12, bk.class)));
        enumMap.put(C1369e.IS_JAILBROKEN, new cv("is_jailbroken", (byte) 2, new cw((byte) 2)));
        enumMap.put(C1369e.IS_PIRATED, new cv("is_pirated", (byte) 2, new cw((byte) 2)));
        enumMap.put(C1369e.DEVICE_BOARD, new cv("device_board", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.DEVICE_BRAND, new cv("device_brand", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.DEVICE_MANUTIME, new cv("device_manutime", (byte) 2, new cw((byte) 10)));
        enumMap.put(C1369e.DEVICE_MANUFACTURER, new cv("device_manufacturer", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.DEVICE_MANUID, new cv("device_manuid", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1369e.DEVICE_NAME, new cv("device_name", (byte) 2, new cw((byte) 11)));
        bAT = Collections.unmodifiableMap(enumMap);
        cv.bUa(at.class, bAT);
    }

    public at m930a(String str) {
        this.f754a = str;
        return this;
    }

    public boolean m933e() {
        return this.f754a != null;
    }

    public void m931a(boolean z) {
        if (!z) {
            this.f754a = null;
        }
    }

    public at m932b(String str) {
        this.f755b = str;
        return this;
    }

    public boolean m934i() {
        return this.f755b != null;
    }

    public void bZC(boolean z) {
        if (!z) {
            this.f755b = null;
        }
    }

    public at bZD(String str) {
        this.f756c = str;
        return this;
    }

    public boolean m935l() {
        return this.f756c != null;
    }

    public void bZE(boolean z) {
        if (!z) {
            this.f756c = null;
        }
    }

    public boolean bZF() {
        return this.f757d != null;
    }

    public void bZG(boolean z) {
        if (!z) {
            this.f757d = null;
        }
    }

    public at bZH(String str) {
        this.f758e = str;
        return this;
    }

    public boolean bZI() {
        return this.f758e != null;
    }

    public void bZJ(boolean z) {
        if (!z) {
            this.f758e = null;
        }
    }

    public at bZK(String str) {
        this.f759f = str;
        return this;
    }

    public boolean bZL() {
        return this.f759f != null;
    }

    public void bZM(boolean z) {
        if (!z) {
            this.f759f = null;
        }
    }

    public at bZN(String str) {
        this.f760g = str;
        return this;
    }

    public boolean bZO() {
        return this.f760g != null;
    }

    public void bZP(boolean z) {
        if (!z) {
            this.f760g = null;
        }
    }

    public at bZQ(String str) {
        this.f761h = str;
        return this;
    }

    public boolean bZR() {
        return this.f761h != null;
    }

    public void bZS(boolean z) {
        if (!z) {
            this.f761h = null;
        }
    }

    public at bZT(bk bkVar) {
        this.f762i = bkVar;
        return this;
    }

    public boolean bZU() {
        return this.f762i != null;
    }

    public void bZV(boolean z) {
        if (!z) {
            this.f762i = null;
        }
    }

    public boolean bZW() {
        return aN.bVw(this.f752O, 0);
    }

    public void bZX(boolean z) {
        this.f752O = (byte) aN.bVz(this.f752O, 0, z);
    }

    public boolean bZY() {
        return aN.bVw(this.f752O, 1);
    }

    public void bZZ(boolean z) {
        this.f752O = (byte) aN.bVz(this.f752O, 1, z);
    }

    public at caa(String str) {
        this.f765l = str;
        return this;
    }

    public boolean cab() {
        return this.f765l != null;
    }

    public void cac(boolean z) {
        if (!z) {
            this.f765l = null;
        }
    }

    public at cad(String str) {
        this.f766m = str;
        return this;
    }

    public boolean cae() {
        return this.f766m != null;
    }

    public void caf(boolean z) {
        if (!z) {
            this.f766m = null;
        }
    }

    public at m929a(long j) {
        this.f767n = j;
        cah(true);
        return this;
    }

    public boolean cag() {
        return aN.bVw(this.f752O, 2);
    }

    public void cah(boolean z) {
        this.f752O = (byte) aN.bVz(this.f752O, 2, z);
    }

    public at cai(String str) {
        this.f768o = str;
        return this;
    }

    public boolean caj() {
        return this.f768o != null;
    }

    public void cak(boolean z) {
        if (!z) {
            this.f768o = null;
        }
    }

    public at cal(String str) {
        this.f769p = str;
        return this;
    }

    public boolean m928Y() {
        return this.f769p != null;
    }

    public void cam(boolean z) {
        if (!z) {
            this.f769p = null;
        }
    }

    public at can(String str) {
        this.f770q = str;
        return this;
    }

    public boolean cao() {
        return this.f770q != null;
    }

    public void cap(boolean z) {
        if (!z) {
            this.f770q = null;
        }
    }

    public void bQD(dl dlVar) {
        ((C1336M) bAS.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bAS.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("DeviceInfo(");
        Object obj = 1;
        if (m933e()) {
            stringBuilder.append("device_id:");
            if (this.f754a != null) {
                stringBuilder.append(this.f754a);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (m934i()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("idmd5:");
            if (this.f755b != null) {
                stringBuilder.append(this.f755b);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (m935l()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mac_address:");
            if (this.f756c != null) {
                stringBuilder.append(this.f756c);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZF()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("open_udid:");
            if (this.f757d != null) {
                stringBuilder.append(this.f757d);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZI()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("model:");
            if (this.f758e != null) {
                stringBuilder.append(this.f758e);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZL()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("cpu:");
            if (this.f759f != null) {
                stringBuilder.append(this.f759f);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZO()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("os:");
            if (this.f760g != null) {
                stringBuilder.append(this.f760g);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZR()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("os_version:");
            if (this.f761h != null) {
                stringBuilder.append(this.f761h);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZU()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("resolution:");
            if (this.f762i != null) {
                stringBuilder.append(this.f762i);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (bZW()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("is_jailbroken:");
            stringBuilder.append(this.f763j);
            obj = null;
        }
        if (bZY()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("is_pirated:");
            stringBuilder.append(this.f764k);
            obj = null;
        }
        if (cab()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_board:");
            if (this.f765l != null) {
                stringBuilder.append(this.f765l);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (cae()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_brand:");
            if (this.f766m != null) {
                stringBuilder.append(this.f766m);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (cag()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_manutime:");
            stringBuilder.append(this.f767n);
            obj = null;
        }
        if (caj()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_manufacturer:");
            if (this.f768o != null) {
                stringBuilder.append(this.f768o);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (m928Y()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_manuid:");
            if (this.f769p != null) {
                stringBuilder.append(this.f769p);
            } else {
                stringBuilder.append("null");
            }
            obj = null;
        }
        if (cao()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("device_name:");
            if (this.f770q != null) {
                stringBuilder.append(this.f770q);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void caq() {
        if (this.f762i != null) {
            this.f762i.m1079j();
        }
    }
}
