package com.android.multiexposure;

import android.hardware.Camera;
import android.hardware.Camera.Size;
import com.android.common.C0299a;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0983s extends C0968o {
    public C0983s(C0329e c0329e) {
        super(c0329e);
        this.amb = 0;
    }

    public void awd() {
        if (this.amb == 0) {
            this.amd.release();
            this.amd.setType(2);
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        super.onPreviewFrame(bArr, camera);
        axA();
        if (this.ame.Tn() != null && this.ame.Tr() != null) {
            Size Gv = this.ame.Tn().Gv();
            axP(bArr);
            this.amf = C0299a.anX(this.amm, Gv.width, Gv.height, C0616j.aoS(0, this.ame.SQ()));
            this.ame.Ts().abF(this);
            this.ame.Tt();
        }
    }

    public void axP(byte[] bArr) {
        if (this.amb == 0) {
            this.amm = bArr;
            return;
        }
        int length = bArr.length;
        int axK = axK();
        for (int i = 0; i < length; i++) {
            this.amm[i] = (byte) ((((this.amm[i] & 255) * (100 - axK)) + ((bArr[i] & 255) * axK)) / 100);
        }
    }

    public void axC() {
        if (this.amb != 0) {
            axx();
            Thread c0982r = new C0982r(this);
            c0982r.axO(null, 0);
            this.aml = c0982r;
        }
    }

    protected void awe(byte[] bArr) {
        this.amb = 0;
        this.amd.release();
        this.amd.setType(2);
        super.awe(bArr);
    }

    public void awf(byte[] bArr) {
        if (this.amb == 0) {
            axw(bArr);
            this.amg = new C0981q(this, 0);
            this.ami = this.amj;
        } else {
            axx();
            int aoA = (((this.ami - this.amj) - (this.amk - C0472e.aoA(bArr))) + 360) % 360;
            axw(bArr);
            this.amg = new C0981q(this, aoA);
        }
        this.amb++;
        C0090a.bvo("BaseMultiExposure", "processOrigionJpegData numTaken: " + this.amb);
        this.amh.axq(2, this.amf, 0);
    }
}
