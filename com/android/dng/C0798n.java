package com.android.dng;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

public final class C0798n implements PictureCallback {
    private C0329e aNl = null;
    private long aNm = 0;
    private int aNn = 0;
    private String aNo = null;

    public C0798n(C0329e c0329e) {
        this.aNl = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        bdS(System.currentTimeMillis());
        if (bArr != null) {
            C0090a.bvo("DngRawPictureCallback", "rawData.length = " + bArr.length);
            this.aNo = C0616j.aoX(bdP(), this.aNl.Tb(R.string.image_file_name_format));
            long bdP = bdP();
            if (bdP / 1000 == this.aNm / 1000) {
                this.aNn++;
                this.aNo += "_" + this.aNn;
            } else {
                this.aNm = bdP;
                this.aNn = 0;
            }
            String str = C0701s.ara(bdO()) + "/";
            String str2 = this.aNo + ".dng";
            C0090a.bvo("DngRawPictureCallback", "mFilePath=" + (str + str2));
            String bdL = bdL();
            C0090a.bvo("DngRawPictureCallback", "kwang_3a dng_data" + bdL);
            Size Gr = this.aNl.Tn().Gr();
            int i = Gr.width;
            int i2 = Gr.height;
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("_data", str + str2);
            contentValues.put("_display_name", str2);
            contentValues.put("title", this.aNo);
            contentValues.put("width", Integer.valueOf(i));
            contentValues.put("height", Integer.valueOf(i2));
            contentValues.put("orientation", Integer.valueOf(this.aNl.TW()));
            this.aNl.Ti().alX(new C0788d(this.aNl, bArr, bdL, str, str2, contentValues, new C0799o()));
        } else {
            C0090a.bvo("DngRawPictureCallback", "rawData = null ");
        }
        C0090a.bvo("DngRawPictureCallback", "mShutterToRawCallbackTime = " + (bdQ() - bdR()) + "ms");
    }

    private String bdM() {
        return (((float) this.aNl.Tn().Gi()) * this.aNl.Tn().Gb()) + "";
    }

    private String bdN() {
        return (((float) this.aNl.Tn().Gn()) * this.aNl.Tn().Gb()) + "";
    }

    private String bdL() {
        this.aNl.SY().tW();
        return this.aNl.Tn().FX("dng-data") + "," + this.aNl.Tn().FX("dng-comp-data") + "," + (((float) this.aNl.Tn().Ga()) * this.aNl.Tn().Gb()) + "," + C0421M.dC().dD().br() + "," + C0421M.dC().dD().bs() + "," + C0421M.dC().dD().bs() + "," + C0616j.aoX(bdP(), "yyyy:MM:dd HH:mm:ss") + "," + this.aNl.To() + "," + bdM() + "," + bdN();
    }

    private C0329e bdK() {
        return this.aNl;
    }

    private void bdS(long j) {
        bdK().TK(j);
    }

    private long bdQ() {
        return bdK().TL();
    }

    private long bdR() {
        return bdK().TM();
    }

    private long bdP() {
        return this.aNl.TI();
    }

    private int bdO() {
        return this.aNl.TH();
    }
}
