package p043u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class aq implements Serializable, Cloneable, cj {
    private static final cB bwA = new cB("version_index", (byte) 8, (short) 3);
    private static final cB bwB = new cB("package_name", (byte) 11, (short) 4);
    private static final cB bwC = new cB("sdk_type", (byte) 8, (short) 5);
    private static final cB bwD = new cB("sdk_version", (byte) 11, (short) 6);
    private static final cB bwE = new cB("channel", (byte) 11, (short) 7);
    private static final cB bwF = new cB("wrapper_type", (byte) 11, (short) 8);
    private static final cB bwG = new cB("wrapper_version", (byte) 11, (short) 9);
    private static final cB bwH = new cB("vertical_type", (byte) 8, (short) 10);
    private static final Map bwI = new HashMap();
    public static final Map bwJ;
    private static final aP bwx = new aP("AppInfo");
    private static final cB bwy = new cB("key", (byte) 11, (short) 1);
    private static final cB bwz = new cB("version", (byte) 11, (short) 2);
    private C1366e[] f723A = new C1366e[]{C1366e.VERSION, C1366e.VERSION_INDEX, C1366e.PACKAGE_NAME, C1366e.WRAPPER_TYPE, C1366e.WRAPPER_VERSION, C1366e.VERTICAL_TYPE};
    public String f724a;
    public String f725b;
    public int f726c;
    public String f727d;
    public bm f728e;
    public String f729f;
    public String f730g;
    public String f731h;
    public String f732i;
    public int f733j;
    private byte f734z = (byte) 0;

    public enum C1366e implements aF {
        KEY((short) 1, "key"),
        VERSION((short) 2, "version"),
        VERSION_INDEX((short) 3, "version_index"),
        PACKAGE_NAME((short) 4, "package_name"),
        SDK_TYPE((short) 5, "sdk_type"),
        SDK_VERSION((short) 6, "sdk_version"),
        CHANNEL((short) 7, "channel"),
        WRAPPER_TYPE((short) 8, "wrapper_type"),
        WRAPPER_VERSION((short) 9, "wrapper_version"),
        VERTICAL_TYPE((short) 10, "vertical_type");
        
        private static final Map bBm = null;
        private final short f721l;
        private final String f722m;

        static {
            bBm = new HashMap();
            Iterator it = EnumSet.allOf(C1366e.class).iterator();
            while (it.hasNext()) {
                C1366e c1366e = (C1366e) it.next();
                bBm.put(c1366e.m903b(), c1366e);
            }
        }

        private C1366e(short s, String str) {
            this.f721l = (short) s;
            this.f722m = str;
        }

        public short mo1020a() {
            return this.f721l;
        }

        public String m903b() {
            return this.f722m;
        }
    }

    static {
        bwI.put(C1341b.class, new cq());
        bwI.put(dB.class, new dc());
        Map enumMap = new EnumMap(C1366e.class);
        enumMap.put(C1366e.KEY, new cv("key", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1366e.VERSION, new cv("version", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1366e.VERSION_INDEX, new cv("version_index", (byte) 2, new cw((byte) 8)));
        enumMap.put(C1366e.PACKAGE_NAME, new cv("package_name", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1366e.SDK_TYPE, new cv("sdk_type", (byte) 1, new cu((byte) 16, bm.class)));
        enumMap.put(C1366e.SDK_VERSION, new cv("sdk_version", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1366e.CHANNEL, new cv("channel", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1366e.WRAPPER_TYPE, new cv("wrapper_type", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1366e.WRAPPER_VERSION, new cv("wrapper_version", (byte) 2, new cw((byte) 11)));
        enumMap.put(C1366e.VERTICAL_TYPE, new cv("vertical_type", (byte) 2, new cw((byte) 8)));
        bwJ = Collections.unmodifiableMap(enumMap);
        cv.bUa(aq.class, bwJ);
    }

    public aq m905a(String str) {
        this.f724a = str;
        return this;
    }

    public void m906a(boolean z) {
        if (!z) {
            this.f724a = null;
        }
    }

    public aq m907b(String str) {
        this.f725b = str;
        return this;
    }

    public boolean m908i() {
        return this.f725b != null;
    }

    public void bUH(boolean z) {
        if (!z) {
            this.f725b = null;
        }
    }

    public aq m904a(int i) {
        this.f726c = i;
        bUI(true);
        return this;
    }

    public boolean m909l() {
        return aN.bVw(this.f734z, 0);
    }

    public void bUI(boolean z) {
        this.f734z = (byte) aN.bVz(this.f734z, 0, z);
    }

    public aq bUJ(String str) {
        this.f727d = str;
        return this;
    }

    public boolean bUK() {
        return this.f727d != null;
    }

    public void bUL(boolean z) {
        if (!z) {
            this.f727d = null;
        }
    }

    public aq bUM(bm bmVar) {
        this.f728e = bmVar;
        return this;
    }

    public void bUN(boolean z) {
        if (!z) {
            this.f728e = null;
        }
    }

    public aq bUO(String str) {
        this.f729f = str;
        return this;
    }

    public void bUP(boolean z) {
        if (!z) {
            this.f729f = null;
        }
    }

    public aq bUQ(String str) {
        this.f730g = str;
        return this;
    }

    public void bUR(boolean z) {
        if (!z) {
            this.f730g = null;
        }
    }

    public aq bUS(String str) {
        this.f731h = str;
        return this;
    }

    public boolean bUT() {
        return this.f731h != null;
    }

    public void bUU(boolean z) {
        if (!z) {
            this.f731h = null;
        }
    }

    public aq bUV(String str) {
        this.f732i = str;
        return this;
    }

    public boolean bUW() {
        return this.f732i != null;
    }

    public void bUX(boolean z) {
        if (!z) {
            this.f732i = null;
        }
    }

    public aq bUY(int i) {
        this.f733j = i;
        bVa(true);
        return this;
    }

    public boolean bUZ() {
        return aN.bVw(this.f734z, 1);
    }

    public void bVa(boolean z) {
        this.f734z = (byte) aN.bVz(this.f734z, 1, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bwI.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bwI.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("AppInfo(");
        stringBuilder.append("key:");
        if (this.f724a != null) {
            stringBuilder.append(this.f724a);
        } else {
            stringBuilder.append("null");
        }
        if (m908i()) {
            stringBuilder.append(", ");
            stringBuilder.append("version:");
            if (this.f725b != null) {
                stringBuilder.append(this.f725b);
            } else {
                stringBuilder.append("null");
            }
        }
        if (m909l()) {
            stringBuilder.append(", ");
            stringBuilder.append("version_index:");
            stringBuilder.append(this.f726c);
        }
        if (bUK()) {
            stringBuilder.append(", ");
            stringBuilder.append("package_name:");
            if (this.f727d != null) {
                stringBuilder.append(this.f727d);
            } else {
                stringBuilder.append("null");
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("sdk_type:");
        if (this.f728e != null) {
            stringBuilder.append(this.f728e);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("sdk_version:");
        if (this.f729f != null) {
            stringBuilder.append(this.f729f);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("channel:");
        if (this.f730g != null) {
            stringBuilder.append(this.f730g);
        } else {
            stringBuilder.append("null");
        }
        if (bUT()) {
            stringBuilder.append(", ");
            stringBuilder.append("wrapper_type:");
            if (this.f731h != null) {
                stringBuilder.append(this.f731h);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bUW()) {
            stringBuilder.append(", ");
            stringBuilder.append("wrapper_version:");
            if (this.f732i != null) {
                stringBuilder.append(this.f732i);
            } else {
                stringBuilder.append("null");
            }
        }
        if (bUZ()) {
            stringBuilder.append(", ");
            stringBuilder.append("vertical_type:");
            stringBuilder.append(this.f733j);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void bVb() {
        if (this.f724a == null) {
            throw new dj("Required field 'key' was not present! Struct: " + toString());
        } else if (this.f728e == null) {
            throw new dj("Required field 'sdk_type' was not present! Struct: " + toString());
        } else if (this.f729f == null) {
            throw new dj("Required field 'sdk_version' was not present! Struct: " + toString());
        } else if (this.f730g == null) {
            throw new dj("Required field 'channel' was not present! Struct: " + toString());
        }
    }
}
