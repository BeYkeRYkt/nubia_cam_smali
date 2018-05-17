package com.android.common.exif;

import java.util.HashMap;
import java.util.Map;

class C0515g {
    private static final int[] Bk = new int[]{0, 1, 2, 3, 4};
    private final Map Bh = new HashMap();
    private final int Bi;
    private int Bj = 0;

    C0515g(int i) {
        this.Bi = i;
    }

    protected static int[] AZ() {
        return Bk;
    }

    protected C0514f[] AW() {
        return (C0514f[]) this.Bh.values().toArray(new C0514f[this.Bh.size()]);
    }

    protected int AU() {
        return this.Bi;
    }

    protected C0514f AR(short s) {
        return (C0514f) this.Bh.get(Short.valueOf(s));
    }

    protected C0514f AV(C0514f c0514f) {
        c0514f.AH(this.Bi);
        return (C0514f) this.Bh.put(Short.valueOf(c0514f.Aa()), c0514f);
    }

    protected void AS(short s) {
        this.Bh.remove(Short.valueOf(s));
    }

    protected int AT() {
        return this.Bh.size();
    }

    protected void AY(int i) {
        this.Bj = i;
    }

    protected int AX() {
        return this.Bj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof C0515g)) {
            C0515g c0515g = (C0515g) obj;
            if (c0515g.AU() == this.Bi && c0515g.AT() == AT()) {
                for (C0514f c0514f : c0515g.AW()) {
                    if (!C0523o.Cl(c0514f.Aa()) && !c0514f.equals((C0514f) this.Bh.get(Short.valueOf(c0514f.Aa())))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
