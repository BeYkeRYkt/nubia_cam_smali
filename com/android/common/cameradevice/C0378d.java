package com.android.common.cameradevice;

public class C0378d {
    private static int GY = -1;
    private static int GZ = C0384o.Jr().Js();
    private static int Ha = C0384o.Jr().Jt();
    private static int Hd = C0384o.Jr().Jx();
    private int[] Hb = null;
    private int Hc = GY;
    private int He = GY;

    public C0378d(int i, int i2) {
        this.Hc = i;
        this.He = i2;
        if (this.Hc != GY && this.He != GY) {
            this.Hb = new int[]{this.Hc, this.He};
        } else if (this.Hc != GY) {
            this.Hb = new int[]{this.Hc};
        }
    }

    public int[] FF() {
        return this.Hb;
    }

    public boolean FA(int i) {
        return this.Hc == i || this.He == i;
    }

    public int Fz() {
        return this.Hc;
    }

    public int FC() {
        return this.He;
    }

    public boolean FB() {
        return this.Hc != GY;
    }

    public boolean Fy() {
        return this.He != GY;
    }

    public boolean FD() {
        if (this.Hc != GY && this.Hc == GZ) {
            return true;
        }
        if (this.He == GY || this.He != GZ) {
            return false;
        }
        return true;
    }

    public boolean FE() {
        if (this.Hc != GY && this.Hc == Hd) {
            return true;
        }
        if (this.He == GY || this.He != Hd) {
            return false;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0378d) {
            C0378d c0378d = (C0378d) obj;
            if (c0378d.He == this.He && c0378d.Hc == this.Hc) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String str = "";
        if (this.Hc != GY) {
            str = str + "MainCamera: " + this.Hc + ";";
        }
        if (this.He != GY) {
            return str + "SubCamera: " + this.He;
        }
        return str;
    }
}
