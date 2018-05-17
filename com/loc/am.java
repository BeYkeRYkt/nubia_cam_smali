package com.loc;

import java.util.Locale;

public class am {
    public String f220a = "";
    public String f221b = "";
    public int bfj = 0;
    public int bfk = 0;
    public int f222c = 0;
    public int f223d = 0;
    public int f224e = 0;
    public int f225f = 0;
    public int f226g = 0;
    public int f227j = -113;
    public int f228k = 9;

    protected am(int i) {
        this.f228k = i;
    }

    public boolean bye(am amVar) {
        if (amVar == null) {
            return false;
        }
        switch (amVar.f228k) {
            case 1:
                return this.f228k == 1 && amVar.f222c == this.f222c && amVar.f223d == this.f223d && amVar.f221b != null && amVar.f221b.equals(this.f221b);
            case 2:
                return this.f228k == 2 && amVar.bfk == this.bfk && amVar.bfj == this.bfj && amVar.f226g == this.f226g;
            default:
                return false;
        }
    }

    public String toString() {
        String str = "unknown";
        switch (this.f228k) {
            case 1:
                return String.format(Locale.US, "GSM lac=%d, cid=%d, mnc=%s", new Object[]{Integer.valueOf(this.f222c), Integer.valueOf(this.f223d), this.f221b});
            case 2:
                return String.format(Locale.US, "CDMA bid=%d, nid=%d, sid=%d", new Object[]{Integer.valueOf(this.bfk), Integer.valueOf(this.bfj), Integer.valueOf(this.f226g)});
            default:
                return str;
        }
    }
}
