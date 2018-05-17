package cn.nubia.p000a;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p001l.C0624c;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;
import java.io.File;

public final class C0009g implements PictureCallback {
    private C0006k bno = null;
    private C0329e bnp = null;
    private int bnq = -1;
    private String bnr = null;
    private String bns = null;
    private long bnt = 0;
    private int bnu = 0;
    private String bnv = null;
    private Size bnw = null;
    private long bnx = 0;
    private String bny = null;
    private int bnz = CameraMember.NORMAL.aan();

    public C0009g(C0329e c0329e, int i, C0006k c0006k) {
        this.bnp = c0329e;
        this.bnq = i;
        this.bno = c0006k;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        int i = 1;
        C0090a.bvo("DualCameraJpegPictureCallback", "onPictureTaken CameraId: " + this.bnq);
        if (bArr == null) {
            C0090a.bvo("DualCameraJpegPictureCallback", "onPictureTaken data is null");
        }
        this.bnp.Vi(1);
        C0090a.bvo("DualCameraJpegPictureCallback", "ReceivedSnapNum " + this.bnp.US() + " BurstSnapNum " + this.bnp.Uz());
        if (this.bnq != C0384o.Jr().Js()) {
            i = 0;
        }
        if (bJC() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            C0090a.bvo("DualCameraJpegPictureCallback", "DualCameraMode: Fusion mode");
            if (!this.bnp.SO()) {
                if (!(i == 0 || bArr == null)) {
                    bJI(bArr);
                }
                if (this.bnp.US() == this.bnp.Uz()) {
                    this.bnp.SU().St(false);
                    C0458b.adi().adk();
                    this.bnp.SX().Kd(DeviceState.IDLE);
                }
            }
        } else if (bJC() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            C0090a.bvo("DualCameraJpegPictureCallback", "DualCameraMode: Aperture mode");
            if (!(i == 0 || bArr == null)) {
                bJJ(bArr);
            }
            if (bJG() == bJB()) {
                C0458b.adi().adk();
                this.bnp.SX().Kd(DeviceState.IDLE);
            }
        }
    }

    private void bJI(byte[] bArr) {
        this.bnw = bJF().Gr();
        this.bnu = C0472e.aoA(bArr);
        this.bnv = this.bnp.Tn().Gq();
        this.bnx = this.bnp.TI();
        this.bnt = (long) bArr.length;
        this.bnz = this.bnp.TH();
        this.bns = bJE(this.bnz, this.bnv);
        this.bnr = bJD(this.bnx, this.bnz, this.bnv);
        this.bnp.Ti().alX(new C0624c(this.bnp, bArr, bJK(), this.bns + "/", this.bnr, bJz(), this.bnu, new C0011h()));
    }

    private String bJE(int i, String str) {
        C0701s.aqX();
        String str2 = C0701s.aqX() + CameraMember.aar(i);
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str2;
    }

    private String bJD(long j, int i, String str) {
        this.bny = C0616j.aoP(j);
        return this.bny + ".jpg";
    }

    private ContentValues bJz() {
        int i;
        int i2;
        if ((bJH() + this.bnu) % 180 == 0) {
            i = this.bnw.width;
            i2 = this.bnw.height;
        } else {
            i = this.bnw.height;
            i2 = this.bnw.width;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(this.bnx));
        contentValues.put("_data", this.bns + "/" + this.bnr);
        contentValues.put("title", this.bny);
        contentValues.put("_display_name", this.bnr);
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.bnu));
        contentValues.put("_size", Long.valueOf(this.bnt));
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        Location age = this.bnp.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private SparseArray bJK() {
        String HH;
        if (IndependenceUtil.afZ || IndependenceUtil.agh) {
            HH = this.bnp.Tn().HH();
        } else {
            HH = null;
        }
        String tB = this.bnp.SY().tB();
        if (tB == null || HH == null || (HH.equals("auto") && "-1".equals(tB))) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        if (!"-1".equals(tB)) {
            sparseArray.put(C0523o.Cb, new C0513e(Float.parseFloat(tB), 0.01f));
        }
        if (!HH.equals("auto")) {
            sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH.substring(3))));
        }
        return sparseArray;
    }

    private C0329e bJA() {
        return this.bnp;
    }

    private int bJG() {
        return bJA().US();
    }

    private int bJB() {
        return bJA().Uz();
    }

    private C0086j bJF() {
        return bJA().Tn();
    }

    private int bJH() {
        return bJA().TW();
    }

    private void bJJ(byte[] bArr) {
        this.bno.bJs(bArr);
    }

    private IDualCameraControl$DualCameraMode bJC() {
        return this.bnp.SM().arD().Sz();
    }
}
