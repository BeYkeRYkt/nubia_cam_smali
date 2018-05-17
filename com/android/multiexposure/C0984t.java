package com.android.multiexposure;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.hardware.Camera.Size;
import com.android.common.C0299a;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0984t extends C0968o {
    public C0984t(C0329e c0329e) {
        super(c0329e);
        this.amb = 0;
        this.amc = 2;
    }

    public int axQ() {
        int i;
        if (this.amb == 0) {
            i = this.ami;
        } else {
            i = this.amj;
        }
        switch (i) {
            case 0:
                return 8;
            case 90:
                return 7;
            case 180:
                return 9;
            case 270:
                return 6;
            default:
                return 8;
        }
    }

    public void awd() {
        if (this.amb == 0) {
            this.amd.release();
            C0090a.bvo("BaseMultiExposure", "initBuffer mCurrentRotation = " + this.amj + " mFirstPictureJpegOrientation = " + this.amk + ",case value:" + (((this.amj - this.amk) + 360) % 360));
            switch (((this.amj - this.amk) + 360) % 360) {
                case 0:
                    this.amd.setType(8);
                    return;
                case 90:
                    this.amd.setType(7);
                    return;
                case 180:
                    this.amd.setType(9);
                    return;
                case 270:
                    this.amd.setType(6);
                    return;
                default:
                    return;
            }
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        super.onPreviewFrame(bArr, camera);
        if (this.ame.Tn() != null && this.ame.Tr() != null) {
            int aoS = C0616j.aoS(0, this.ame.SQ());
            Size Gv = this.ame.Tn().Gv();
            Bitmap anX = C0299a.anX(bArr, Gv.width, Gv.height, aoS);
            this.amf = Bitmap.createBitmap(anX, 0, 0, Gv.height, Gv.width / 2);
            anX.recycle();
            C0090a.bvo("BaseMultiExposure", "MultiExposure  onPreviewFrame length: " + bArr.length);
            this.ame.Ts().abF(this);
            this.ame.Tt();
        }
    }

    public void awf(byte[] bArr) {
        if (this.amb == 0) {
            awd();
            this.amb++;
            this.amc--;
            axw(bArr);
            this.amg = new C0981q(this, 0);
            this.amh.axq(axQ(), this.amf, 0);
            this.ami = this.amj;
            C0090a.bvo("jyzhou", "processOrigionJpegData mFirstTimeRotation =" + this.ami);
            return;
        }
        axx();
        int aoA = (((this.ami - this.amj) - (this.amk - C0472e.aoA(bArr))) + 360) % 360;
        Thread c0982r = new C0982r(this);
        c0982r.axO(bArr, aoA);
        this.aml = c0982r;
        C0090a.bvo("jyzhou", "processOrigionJpegData rotation,mCurrentRotation =" + aoA + "," + this.amj);
    }

    void awe(byte[] bArr) {
        this.amb = 0;
        this.amc = 2;
        super.awe(bArr);
    }
}
