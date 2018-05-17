package com.android.common.p024d;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.FunctionState;
import com.android.common.p001l.C0040e;
import com.android.common.p001l.C0624c;
import com.android.common.storagemanager.C0721d;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.p010a.C0090a;

public final class C0451f implements PictureCallback {
    private C0329e Oj = null;
    private String Ok = null;
    private String Ol = null;
    private long Om = 0;
    private long On = 0;
    private String Oo = null;
    private boolean Op = false;
    private C0721d Oq;
    private int Or = 0;
    private Size Os = null;

    public C0451f(C0329e c0329e) {
        this.Oj = c0329e;
        this.Oq = new C0721d(c0329e.Ti());
    }

    public void QP(String str) {
        this.Oo = str;
    }

    public void QQ(boolean z) {
        this.Op = z;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (QY() || this.Oj.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING || !this.Op) {
            C0090a.bvo("LongShotJpegPictureCallback", "Abort continous pictures, beacause functionSate:" + this.Oj.SX().JZ() + "; ContinousShotStarted: " + this.Op);
        } else if ("off".equals(this.Oj.Tn().HK())) {
            C0090a.bvo("LongShotJpegPictureCallback", "In Non-Zsl mode. Error occur in longshot!!!");
        } else {
            long QV;
            long QV2;
            long currentTimeMillis = System.currentTimeMillis();
            if (QV() != 0) {
                QV = QV() - QX();
                QV2 = currentTimeMillis - QV();
            } else {
                QV = QW() - QX();
                QV2 = currentTimeMillis - QW();
            }
            C0090a.bvo("LongShotJpegPictureCallback", "shutter to picture display = " + QV + "; picture display to jpeg = " + QV2 + "ms");
            if (this.Oq.alU()) {
                QZ(bArr, currentTimeMillis);
            } else {
                C0090a.bvo("LongShotJpegPictureCallback", "drop picture");
            }
            C0090a.bvo("LongShotJpegPictureCallback", "jpegCallbackFinishTime = " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }

    private void QZ(byte[] bArr, long j) {
        this.On = j;
        this.Os = this.Oj.Tn().Gr();
        this.Or = C0472e.aoA(bArr);
        this.Om = (long) bArr.length;
        this.Ok = C0616j.aoP(this.On);
        this.Ol = QU();
        C0040e c0624c = new C0624c(this.Oj, bArr, null, this.Ol + "/", this.Ok + ".jpg", QR(), this.Or, new C0452g());
        c0624c.ahm(true);
        StorageManager$StorageStatusType amf = this.Oj.Ti().amf(c0624c, false);
        if (amf != StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS) {
            C0090a.bvo("LongShotJpegPictureCallback", "Quality multishoot storageStatus:" + amf);
        } else if (this.Oj.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING) {
            this.Oj.Vi(1);
        }
    }

    private String QU() {
        if (this.Oo == null) {
            C0090a.bvo("LongShotJpegPictureCallback", "Warning!!!Longshot ImagePath is null");
            this.Oo = C0701s.aqX() + "/" + this.Oj.SN().getString(R.string.contents_multiShoot) + '/' + C0616j.aoO(System.currentTimeMillis());
        }
        return this.Oo;
    }

    private ContentValues QR() {
        int i;
        int i2;
        ContentValues contentValues = new ContentValues(11);
        contentValues.put("datetaken", Long.valueOf(this.On));
        contentValues.put("_data", this.Ol + "/" + this.Ok + ".jpg");
        contentValues.put("title", this.Ok);
        contentValues.put("_display_name", this.Ok + ".jpg");
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.Or));
        contentValues.put("_size", Long.valueOf(this.Om));
        if ((QT() + this.Or) % 180 == 0) {
            i = this.Os.width;
            i2 = this.Os.height;
        } else {
            i = this.Os.height;
            i2 = this.Os.width;
        }
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        Location age = this.Oj.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private C0329e QS() {
        return this.Oj;
    }

    private int QT() {
        return QS().TW();
    }

    private long QW() {
        return QS().TL();
    }

    private long QX() {
        return QS().TM();
    }

    private long QV() {
        return QS().Vd();
    }

    private boolean QY() {
        return QS().SO();
    }
}
