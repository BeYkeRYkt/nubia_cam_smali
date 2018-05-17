package com.android.common.setting;

import android.graphics.Point;
import android.hardware.Camera.Size;
import com.android.common.C0616j;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import java.util.List;

public class C0707g {
    private C0417I zb = null;
    private C0417I zc = null;
    private int zd = -1;
    private String ze = null;
    private C0417I zf = null;
    private String zg = null;
    private String zh = null;
    private C0086j zi = null;
    private List zj = null;
    private List zk = null;
    private List zl = null;
    private List zm = null;

    public C0707g(C0086j c0086j, int i) {
        this.zi = c0086j;
        this.zd = i;
        if (this.zi != null) {
            uE(this.zi);
        }
    }

    public void uH(C0086j c0086j) {
        if (this.zi == null && c0086j != null) {
            uE(c0086j);
        }
        this.zi = c0086j;
    }

    public C0086j ux() {
        return this.zi;
    }

    public List ur() {
        return this.zm;
    }

    public List uB() {
        return this.zl;
    }

    public List uy() {
        return this.zj;
    }

    public List uz() {
        return this.zk;
    }

    public String uw() {
        return this.zh;
    }

    public String uq() {
        return this.ze;
    }

    public String uv() {
        return this.zg;
    }

    public C0417I us() {
        return this.zb;
    }

    public C0417I ut() {
        return this.zc;
    }

    private void uE(C0086j c0086j) {
        this.zm = c0086j.GI();
        this.zl = c0086j.GG();
        this.zj = uG(c0086j);
        this.zk = c0086j.GC();
        if (C0421M.dC().dD().bF() && this.zd == C0384o.Jr().Jx()) {
            this.zk.add("af-mapping");
        }
        this.zh = uA(false, this.zl);
        this.ze = uA(true, this.zl);
        this.zg = uC(true, this.zl);
        this.zc = uD(new int[]{3840, 2160}, this.zm);
        this.zb = uD(new int[]{1920, 1080}, this.zm);
        this.zf = uF(c0086j);
    }

    private List uG(C0086j c0086j) {
        List list = null;
        List GB = c0086j.GB();
        if (!(GB == null || GB.size() == 0)) {
            if (GB.size() == 1 && "off".equals(GB.get(0))) {
            }
            if (list != null) {
                return GB;
            }
            return list;
        }
        list = c0086j.GE();
        if (list != null) {
            return list;
        }
        return GB;
    }

    private String uA(boolean z, List list) {
        double max;
        if (z) {
            Point point = C0616j.ahv;
            max = ((double) Math.max(point.x, point.y)) / ((double) Math.min(point.x, point.y));
        } else {
            max = 0.0d;
        }
        Size size = null;
        int i = 0;
        for (Size size2 : list) {
            Size size3;
            int i2;
            if (max == 0.0d || Math.abs((((double) size2.width) / ((double) size2.height)) - max) <= 0.10000000149011612d) {
                int i3 = size2.width * size2.height;
                if (i3 > i) {
                    size3 = size2;
                    i2 = i3;
                } else {
                    i2 = i;
                    size3 = size;
                }
            } else {
                i2 = i;
                size3 = size;
            }
            size = size3;
            i = i2;
        }
        return size == null ? null : size.width + "x" + size.height;
    }

    private String uC(boolean z, List list) {
        double max;
        if (z) {
            Point point = C0616j.ahv;
            max = ((double) Math.max(point.x, point.y)) / ((double) Math.min(point.x, point.y));
        } else {
            max = 0.0d;
        }
        Size size = null;
        int i = Integer.MAX_VALUE;
        for (Size size2 : list) {
            Size size3;
            int i2;
            if (max == 0.0d || Math.abs((((double) size2.width) / ((double) size2.height)) - max) <= 0.10000000149011612d) {
                int i3 = size2.width * size2.height;
                if (i3 < i) {
                    size3 = size2;
                    i2 = i3;
                } else {
                    i2 = i;
                    size3 = size;
                }
            } else {
                i2 = i;
                size3 = size;
            }
            size = size3;
            i = i2;
        }
        return size == null ? null : size.width + "x" + size.height;
    }

    private C0417I uD(int[] iArr, List list) {
        if (iArr == null || iArr.length != 2) {
            return null;
        }
        for (Size size : list) {
            if (C0616j.apS(size, iArr[0], iArr[1])) {
                return new C0417I(size.width, size.height);
            }
        }
        return null;
    }

    private C0417I uF(C0086j c0086j) {
        String FX = c0086j.FX("nubia_max_preview_size");
        if (FX == null) {
            return null;
        }
        int indexOf = FX.indexOf(120);
        if (indexOf == -1) {
            return null;
        }
        return new C0417I(Integer.parseInt(FX.substring(0, indexOf)), Integer.parseInt(FX.substring(indexOf + 1)));
    }

    public C0417I uu() {
        return this.zf;
    }
}
