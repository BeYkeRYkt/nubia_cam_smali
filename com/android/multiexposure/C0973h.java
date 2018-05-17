package com.android.multiexposure;

import android.hardware.Camera;
import android.hardware.Camera.Size;
import com.android.common.C0299a;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0973h extends C0968o {
    public C0973h(C0329e c0329e) {
        super(c0329e);
        this.amb = 0;
        this.amc = 2;
    }

    public void awd() {
        if (this.amb == 0) {
            this.amd.release();
            this.amd.setType(5);
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        super.onPreviewFrame(bArr, camera);
        if (this.ame.Tn() != null && this.ame.Tr() != null) {
            int aoS = C0616j.aoS(0, this.ame.SQ());
            Size Gv = this.ame.Tn().Gv();
            this.amf = C0299a.anX(bArr, Gv.width, Gv.height, aoS);
            C0090a.bvo("BaseMultiExposure", "MultiExposure  onPreviewFrame length: " + bArr.length);
            this.ame.Ts().abF(this);
            this.ame.Tt();
        }
    }

    public void awf(byte[] bArr) {
        if (this.amb == 0) {
            this.amb++;
            this.amc--;
            axw(bArr);
            this.amg = new C0981q(this, 0);
            this.amh.axq(5, this.amf, 0);
            this.ami = this.amj;
            return;
        }
        axx();
        int aoA = (((this.ami - this.amj) - (this.amk - C0472e.aoA(bArr))) + 360) % 360;
        Thread c0982r = new C0982r(this);
        c0982r.axO(bArr, aoA);
        this.aml = c0982r;
    }

    void awe(byte[] bArr) {
        this.amb = 0;
        this.amc = 2;
        super.awe(bArr);
    }
}
