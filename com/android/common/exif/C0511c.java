package com.android.common.exif;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class C0511c {
    private static final byte[] AI = new byte[]{(byte) 65, (byte) 83, (byte) 67, (byte) 73, (byte) 73, (byte) 0, (byte) 0, (byte) 0};
    private static final byte[] AJ = new byte[]{(byte) 74, (byte) 73, (byte) 83, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
    private static final byte[] AK = new byte[]{(byte) 85, (byte) 78, (byte) 73, (byte) 67, (byte) 79, (byte) 68, (byte) 69, (byte) 0};
    private final ByteOrder AL;
    private final C0515g[] AM = new C0515g[5];
    private ArrayList AN = new ArrayList();
    private byte[] AO;

    C0511c(ByteOrder byteOrder) {
        this.AL = byteOrder;
    }

    protected byte[] zC() {
        return this.AO;
    }

    protected void zK(byte[] bArr) {
        this.AO = bArr;
    }

    protected boolean zH() {
        return this.AO != null;
    }

    protected void zL(int i, byte[] bArr) {
        if (i < this.AN.size()) {
            this.AN.set(i, bArr);
            return;
        }
        for (int size = this.AN.size(); size < i; size++) {
            this.AN.add(null);
        }
        this.AN.add(bArr);
    }

    protected int zF() {
        return this.AN.size();
    }

    protected byte[] zE(int i) {
        return (byte[]) this.AN.get(i);
    }

    protected boolean zI() {
        return this.AN.size() != 0;
    }

    protected ByteOrder zw() {
        return this.AL;
    }

    protected C0515g zx(int i) {
        if (C0514f.Ai(i)) {
            return this.AM[i];
        }
        return null;
    }

    protected void zz(C0515g c0515g) {
        this.AM[c0515g.AU()] = c0515g;
    }

    protected C0515g zD(int i) {
        C0515g c0515g = this.AM[i];
        if (c0515g != null) {
            return c0515g;
        }
        c0515g = new C0515g(i);
        this.AM[i] = c0515g;
        return c0515g;
    }

    protected C0514f zG(short s, int i) {
        C0515g c0515g = this.AM[i];
        if (c0515g == null) {
            return null;
        }
        return c0515g.AR(s);
    }

    protected C0514f zy(C0514f c0514f) {
        if (c0514f != null) {
            return zA(c0514f, c0514f.Aj());
        }
        return null;
    }

    protected C0514f zA(C0514f c0514f, int i) {
        if (c0514f == null || !C0514f.Ai(i)) {
            return null;
        }
        return zD(i).AV(c0514f);
    }

    protected void zJ(short s, int i) {
        C0515g c0515g = this.AM[i];
        if (c0515g != null) {
            c0515g.AS(s);
        }
    }

    protected List zB() {
        List arrayList = new ArrayList();
        for (C0515g c0515g : this.AM) {
            if (c0515g != null) {
                C0514f[] AW = c0515g.AW();
                if (AW != null) {
                    for (Object add : AW) {
                        arrayList.add(add);
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0511c)) {
            return false;
        }
        C0511c c0511c = (C0511c) obj;
        if (c0511c.AL != this.AL || c0511c.AN.size() != this.AN.size() || !Arrays.equals(c0511c.AO, this.AO)) {
            return false;
        }
        for (int i = 0; i < this.AN.size(); i++) {
            if (!Arrays.equals((byte[]) c0511c.AN.get(i), (byte[]) this.AN.get(i))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            C0515g zx = c0511c.zx(i2);
            C0515g zx2 = zx(i2);
            if (zx != zx2 && zx != null && !zx.equals(zx2)) {
                return false;
            }
        }
        return true;
    }
}
