package p043u.aly;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class br implements Serializable, Cloneable, cj {
    private static final cB bBA = new cB("checksum", (byte) 11, (short) 9);
    private static final cB bBB = new cB("codex", (byte) 8, (short) 10);
    private static final Map bBC = new HashMap();
    public static final Map bBD;
    private static final aP bBr = new aP("UMEnvelope");
    private static final cB bBs = new cB("version", (byte) 11, (short) 1);
    private static final cB bBt = new cB("address", (byte) 11, (short) 2);
    private static final cB bBu = new cB("signature", (byte) 11, (short) 3);
    private static final cB bBv = new cB("serial_num", (byte) 8, (short) 4);
    private static final cB bBw = new cB("ts_secs", (byte) 8, (short) 5);
    private static final cB bBx = new cB("length", (byte) 8, (short) 6);
    private static final cB bBy = new cB("entity", (byte) 11, (short) 7);
    private static final cB bBz = new cB("guid", (byte) 11, (short) 8);
    private byte f921B = (byte) 0;
    private C1388e[] f922C = new C1388e[]{C1388e.CODEX};
    public String f923a;
    public String f924b;
    public String f925c;
    public int f926d;
    public int f927e;
    public int f928f;
    public ByteBuffer f929g;
    public String f930h;
    public String f931i;
    public int f932j;

    public enum C1388e implements aF {
        VERSION((short) 1, "version"),
        ADDRESS((short) 2, "address"),
        SIGNATURE((short) 3, "signature"),
        SERIAL_NUM((short) 4, "serial_num"),
        TS_SECS((short) 5, "ts_secs"),
        LENGTH((short) 6, "length"),
        ENTITY((short) 7, "entity"),
        GUID((short) 8, "guid"),
        CHECKSUM((short) 9, "checksum"),
        CODEX((short) 10, "codex");
        
        private static final Map bzN = null;
        private final short f919l;
        private final String f920m;

        static {
            bzN = new HashMap();
            Iterator it = EnumSet.allOf(C1388e.class).iterator();
            while (it.hasNext()) {
                C1388e c1388e = (C1388e) it.next();
                bzN.put(c1388e.m1117b(), c1388e);
            }
        }

        private C1388e(short s, String str) {
            this.f919l = (short) s;
            this.f920m = str;
        }

        public short mo1020a() {
            return this.f919l;
        }

        public String m1117b() {
            return this.f920m;
        }
    }

    static {
        bBC.put(C1341b.class, new dn());
        bBC.put(dB.class, new bK());
        Map enumMap = new EnumMap(C1388e.class);
        enumMap.put(C1388e.VERSION, new cv("version", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1388e.ADDRESS, new cv("address", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1388e.SIGNATURE, new cv("signature", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1388e.SERIAL_NUM, new cv("serial_num", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1388e.TS_SECS, new cv("ts_secs", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1388e.LENGTH, new cv("length", (byte) 1, new cw((byte) 8)));
        enumMap.put(C1388e.ENTITY, new cv("entity", (byte) 1, new cw((byte) 11, true)));
        enumMap.put(C1388e.GUID, new cv("guid", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1388e.CHECKSUM, new cv("checksum", (byte) 1, new cw((byte) 11)));
        enumMap.put(C1388e.CODEX, new cv("codex", (byte) 2, new cw((byte) 8)));
        bBD = Collections.unmodifiableMap(enumMap);
        cv.bUa(br.class, bBD);
    }

    public br m1119a(String str) {
        this.f923a = str;
        return this;
    }

    public void m1121a(boolean z) {
        if (!z) {
            this.f923a = null;
        }
    }

    public br m1122b(String str) {
        this.f924b = str;
        return this;
    }

    public void caY(boolean z) {
        if (!z) {
            this.f924b = null;
        }
    }

    public br caZ(String str) {
        this.f925c = str;
        return this;
    }

    public void cba(boolean z) {
        if (!z) {
            this.f925c = null;
        }
    }

    public br m1118a(int i) {
        this.f926d = i;
        cbc(true);
        return this;
    }

    public boolean cbb() {
        return aN.bVw(this.f921B, 0);
    }

    public void cbc(boolean z) {
        this.f921B = (byte) aN.bVz(this.f921B, 0, z);
    }

    public br cbd(int i) {
        this.f927e = i;
        cbf(true);
        return this;
    }

    public boolean cbe() {
        return aN.bVw(this.f921B, 1);
    }

    public void cbf(boolean z) {
        this.f921B = (byte) aN.bVz(this.f921B, 1, z);
    }

    public br cbg(int i) {
        this.f928f = i;
        cbi(true);
        return this;
    }

    public boolean cbh() {
        return aN.bVw(this.f921B, 2);
    }

    public void cbi(boolean z) {
        this.f921B = (byte) aN.bVz(this.f921B, 2, z);
    }

    public br m1120a(byte[] bArr) {
        cbj(bArr != null ? ByteBuffer.wrap(bArr) : (ByteBuffer) null);
        return this;
    }

    public br cbj(ByteBuffer byteBuffer) {
        this.f929g = byteBuffer;
        return this;
    }

    public void cbk(boolean z) {
        if (!z) {
            this.f929g = null;
        }
    }

    public br cbl(String str) {
        this.f930h = str;
        return this;
    }

    public void cbm(boolean z) {
        if (!z) {
            this.f930h = null;
        }
    }

    public br cbn(String str) {
        this.f931i = str;
        return this;
    }

    public void cbo(boolean z) {
        if (!z) {
            this.f931i = null;
        }
    }

    public br cbp(int i) {
        this.f932j = i;
        cbr(true);
        return this;
    }

    public boolean cbq() {
        return aN.bVw(this.f921B, 3);
    }

    public void cbr(boolean z) {
        this.f921B = (byte) aN.bVz(this.f921B, 3, z);
    }

    public void bQD(dl dlVar) {
        ((C1336M) bBC.get(dlVar.bUv())).mo964b().bQl(dlVar, this);
    }

    public void bQE(dl dlVar) {
        ((C1336M) bBC.get(dlVar.bUv())).mo964b().bQk(dlVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("UMEnvelope(");
        stringBuilder.append("version:");
        if (this.f923a != null) {
            stringBuilder.append(this.f923a);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("address:");
        if (this.f924b != null) {
            stringBuilder.append(this.f924b);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("signature:");
        if (this.f925c != null) {
            stringBuilder.append(this.f925c);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("serial_num:");
        stringBuilder.append(this.f926d);
        stringBuilder.append(", ");
        stringBuilder.append("ts_secs:");
        stringBuilder.append(this.f927e);
        stringBuilder.append(", ");
        stringBuilder.append("length:");
        stringBuilder.append(this.f928f);
        stringBuilder.append(", ");
        stringBuilder.append("entity:");
        if (this.f929g != null) {
            C1405q.bRv(this.f929g, stringBuilder);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("guid:");
        if (this.f930h != null) {
            stringBuilder.append(this.f930h);
        } else {
            stringBuilder.append("null");
        }
        stringBuilder.append(", ");
        stringBuilder.append("checksum:");
        if (this.f931i != null) {
            stringBuilder.append(this.f931i);
        } else {
            stringBuilder.append("null");
        }
        if (cbq()) {
            stringBuilder.append(", ");
            stringBuilder.append("codex:");
            stringBuilder.append(this.f932j);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void cbs() {
        if (this.f923a == null) {
            throw new dj("Required field 'version' was not present! Struct: " + toString());
        } else if (this.f924b == null) {
            throw new dj("Required field 'address' was not present! Struct: " + toString());
        } else if (this.f925c == null) {
            throw new dj("Required field 'signature' was not present! Struct: " + toString());
        } else if (this.f929g == null) {
            throw new dj("Required field 'entity' was not present! Struct: " + toString());
        } else if (this.f930h == null) {
            throw new dj("Required field 'guid' was not present! Struct: " + toString());
        } else if (this.f931i == null) {
            throw new dj("Required field 'checksum' was not present! Struct: " + toString());
        }
    }
}
