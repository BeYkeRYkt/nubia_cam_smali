package com.android.multiexposure;

import com.android.common.C0472e;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0976k extends C0968o {
    public C0976k(C0329e c0329e) {
        super(c0329e);
        this.amb = 0;
        this.amc = 2;
    }

    public void awd() {
        if (this.amb == 0) {
            this.amd.release();
            this.amd.setType(1);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onPreviewFrame(byte[] r5, android.hardware.Camera r6) {
        /*
        r4 = this;
        r3 = 0;
        super.onPreviewFrame(r5, r6);
        r0 = r4.ame;
        r0 = r0.SO();
        if (r0 == 0) goto L_0x000d;
    L_0x000c:
        return;
    L_0x000d:
        r0 = r4.ame;
        r0 = r0.Tn();
        if (r0 == 0) goto L_0x001d;
    L_0x0015:
        r0 = r4.ame;
        r0 = r0.Tr();
        if (r0 != 0) goto L_0x001e;
    L_0x001d:
        return;
    L_0x001e:
        if (r5 == 0) goto L_0x0023;
    L_0x0020:
        r0 = r5.length;
        if (r0 > 0) goto L_0x0024;
    L_0x0023:
        return;
    L_0x0024:
        r0 = "jyzhou";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "onPreviewFrame mNumTaken =";
        r1 = r1.append(r2);
        r2 = r4.amb;
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
        r0 = r4.amb;
        if (r0 != 0) goto L_0x0062;
    L_0x0044:
        r0 = r4.ame;
        r0 = r0.SQ();
        r0 = com.android.common.C0616j.aoS(r3, r0);
        r1 = r4.ame;
        r1 = r1.Tn();
        r1 = r1.Gv();
        r2 = r1.width;
        r1 = r1.height;
        r0 = com.android.common.C0299a.anX(r5, r2, r1, r0);
        r4.amf = r0;
    L_0x0062:
        r0 = r4.ame;
        r0 = r0.Ts();
        r0.abF(r4);
        r0 = r4.ame;
        r0.Tt();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.multiexposure.k.onPreviewFrame(byte[], android.hardware.Camera):void");
    }

    public void awf(byte[] bArr) {
        C0090a.bvo("jyzhou", "processOrigionJpegData mNumTaken =" + this.amb);
        if (this.amb == 0) {
            this.amb++;
            this.amc--;
            axw(bArr);
            this.amg = new C0981q(this, 0);
            this.amh.axq(1, this.amf, 0);
            this.ami = this.amj;
            C0090a.bvo("jyzhou", "processOrigionJpegData mFirstTimeRotation =" + this.ami);
        } else if (this.amb == 1) {
            axx();
            int aoA = (((this.ami - this.amj) - (this.amk - C0472e.aoA(bArr))) + 360) % 360;
            C0090a.bvo("jyzhou", "processOrigionJpegData rotation,mCurrentRotation =" + aoA + "," + this.amj);
            Thread c0982r = new C0982r(this);
            c0982r.axO(bArr, aoA);
            this.aml = c0982r;
        }
    }

    void awe(byte[] bArr) {
        this.amb = 0;
        this.amc = 2;
        super.awe(bArr);
    }
}
