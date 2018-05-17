package cn.nubia.p000a;

import android.hardware.Camera.Size;
import cn.nubia.bigAperture.C0027c;
import cn.nubia.bigAperture.C0039o;
import com.android.common.p032o.C0685a;

class C0008f implements Runnable {
    private C0039o bnh;
    private byte[] bni;
    private C0005e bnj;
    private int bnk;
    private String bnl;
    private Size bnm;
    final /* synthetic */ C0004c bnn;

    public C0008f(C0004c c0004c, C0005e c0005e, int i, byte[] bArr, String str, C0039o c0039o, Size size) {
        this(c0004c, c0005e, i, bArr, str);
        this.bnh = c0039o;
        this.bnm = size;
    }

    public C0008f(C0004c c0004c, C0005e c0005e, int i, byte[] bArr, String str) {
        this.bnn = c0004c;
        this.bnk = -1;
        this.bnj = c0005e;
        this.bnk = i;
        this.bni = bArr;
        this.bnl = str;
    }

    public void run() {
        this.bnn.bJh("write file: type " + this.bnk + ", path: " + this.bnl);
        if (!(this.bnl == null || this.bni == null)) {
            if (!(this.bnh == null || this.bnm == null)) {
                this.bni = C0027c.bKm(this.bni, this.bnm.width, this.bnm.height, this.bnh);
            }
            C0685a.amA(this.bnl, this.bni);
        }
        if (this.bnj != null) {
            this.bnj.bJu(this.bnk);
        }
    }
}
