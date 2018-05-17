package com.android.common.exif;

public class C0513e {
    private final long AV;
    private final long AW;

    public C0513e(long j, long j2) {
        this.AW = j;
        this.AV = j2;
    }

    public C0513e(float f, float f2) {
        if (f < 1.0f) {
            this.AW = 1;
            this.AV = Math.round(1.0d / ((double) f));
            return;
        }
        this.AW = (long) Math.round(f / f2);
        this.AV = (long) Math.round(1.0f / f2);
    }

    public C0513e(C0513e c0513e) {
        this.AW = c0513e.AW;
        this.AV = c0513e.AV;
    }

    public long zX() {
        return this.AW;
    }

    public long zY() {
        return this.AV;
    }

    public double zZ() {
        return ((double) this.AW) / ((double) this.AV);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0513e)) {
            return false;
        }
        C0513e c0513e = (C0513e) obj;
        if (!(this.AW == c0513e.AW && this.AV == c0513e.AV)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return this.AW + "/" + this.AV;
    }
}
