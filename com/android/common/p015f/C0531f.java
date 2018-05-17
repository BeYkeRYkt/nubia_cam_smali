package com.android.common.p015f;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0086j;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p001l.C0624c;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public final class C0531f implements PictureCallback {
    private C0329e VZ = null;
    private String Wa = null;
    private String Wb = null;
    private long Wc = 0;
    private int Wd = 0;
    private String We = null;
    private Size Wf = null;
    private long Wg = 0;
    private String Wh = null;
    private int Wi = CameraMember.NORMAL.aan();

    public C0531f(C0329e c0329e) {
        this.VZ = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (!aei() && bArr != null) {
            long aee;
            long aee2;
            if ("on".equals(aeb().HK())) {
                C0090a.bvo("JpegPictureCallback", "In onPictureTaken , in zslmode");
                this.VZ.SY().tW();
                aej(this.VZ.UL());
            }
            this.VZ.Vi(1);
            C0090a.bvo("JpegPictureCallback", "JpegPictureCallback arrived, receivedSnapNum = " + aec() + "; burstSnapNum = " + adX());
            long currentTimeMillis = System.currentTimeMillis();
            if (aee() != 0) {
                aee = aee() - aeg();
                aee2 = currentTimeMillis - aee();
            } else {
                aee = aef() - aeg();
                aee2 = currentTimeMillis - aef();
            }
            C0090a.bvo("JpegPictureCallback", "shutter to picture display = " + aee + "ms; picture display to jpeg = " + aee2 + "ms");
            if ("off".equals(aeb().HK()) && aec() == adX()) {
                aek();
            } else if (aec() == adX()) {
                this.VZ.Um();
                this.VZ.SU().St(false);
                adY().Kd(DeviceState.IDLE);
            }
            if (!this.VZ.SU().RU(bArr)) {
                this.Wf = aeb().Gr();
                this.Wd = C0472e.aoA(bArr);
                this.We = this.VZ.Tn().Gq();
                this.Wg = this.VZ.TI();
                this.Wc = (long) bArr.length;
                this.Wi = this.VZ.TH();
                this.Wb = aea(this.Wi, this.We);
                this.Wa = adZ(this.Wg, this.Wi, this.We);
                this.VZ.Ti().alX(new C0624c(this.VZ, bArr, ael(), this.Wb + "/", this.Wa, adV(), this.Wd, new C0532g()));
                if (!this.VZ.Tu() && aec() == adX()) {
                    C0458b.adi().adk();
                }
                C0090a.bvo("JpegPictureCallback", "JpegCallbackFinishTime = " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            }
        }
    }

    private String aea(int i, String str) {
        String aqX = C0701s.aqX();
        if (str != null && !str.equalsIgnoreCase("jpeg")) {
            return aqX + "/Raw";
        }
        if (i == -1) {
            return C0636m.aqq();
        }
        if (!this.VZ.Tu()) {
            return C0701s.aqX() + CameraMember.aaq(i, this.VZ.SQ());
        }
        return C0701s.aqX() + "/" + this.VZ.Tb(R.string.contents_livephoto);
    }

    private String adZ(long j, int i, String str) {
        String str2;
        this.Wh = C0616j.aoP(j);
        if (str == null || str.equalsIgnoreCase("jpeg")) {
            str2 = ".jpg";
        } else {
            str2 = ".raw";
        }
        return this.Wh + str2;
    }

    private ContentValues adV() {
        int i;
        int i2;
        if ((aed() + this.Wd) % 180 == 0) {
            i = this.Wf.width;
            i2 = this.Wf.height;
        } else {
            i = this.Wf.height;
            i2 = this.Wf.width;
        }
        if (!(this.We == null || this.We.equalsIgnoreCase("jpeg"))) {
            String FX = this.VZ.Tn().FX("raw-size");
            if (FX != null) {
                int indexOf = FX.indexOf(120);
                if (indexOf != -1) {
                    i = Integer.parseInt(FX.substring(0, indexOf));
                    i2 = Integer.parseInt(FX.substring(indexOf + 1));
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(this.Wg));
        contentValues.put("_data", this.Wb + "/" + this.Wa);
        contentValues.put("title", this.Wh);
        contentValues.put("_display_name", this.Wa);
        if (this.We.equalsIgnoreCase("jpeg")) {
            contentValues.put("mime_type", "image/jpeg");
        } else {
            contentValues.put("mime_type", "image/dng");
        }
        contentValues.put("orientation", Integer.valueOf(this.Wd));
        contentValues.put("_size", Long.valueOf(this.Wc));
        if (!aeh()) {
            contentValues.put("width", Integer.valueOf(i));
            contentValues.put("height", Integer.valueOf(i2));
        }
        Location age = this.VZ.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private boolean aeh() {
        boolean z = true;
        if (this.VZ == null) {
            return false;
        }
        if (aeb().Gz() != 1) {
            z = false;
        }
        return z;
    }

    private SparseArray ael() {
        String HH;
        if (IndependenceUtil.afZ || IndependenceUtil.agh) {
            HH = this.VZ.Tn().HH();
        } else {
            HH = null;
        }
        String tB = this.VZ.SY().tB();
        if (tB == null || HH == null || (HH.equals("auto") && "-1".equals(tB))) {
            return null;
        }
        SparseArray sparseArray = new SparseArray();
        if (!"-1".equals(tB)) {
            sparseArray.put(C0523o.Cb, new C0513e(Float.parseFloat(tB), 0.01f));
        }
        if (!HH.equals("auto")) {
            if (HH.indexOf("ISO") == -1) {
                sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH)));
            } else {
                sparseArray.put(C0523o.Ca, Integer.valueOf(Integer.parseInt(HH.substring(3))));
            }
        }
        return sparseArray;
    }

    private C0329e adW() {
        return this.VZ;
    }

    private C0404b adY() {
        return this.VZ.SX();
    }

    private int aec() {
        return adW().US();
    }

    private int adX() {
        return adW().Uz();
    }

    private C0086j aeb() {
        return adW().Tn();
    }

    private int aed() {
        return adW().TW();
    }

    private void aek() {
        adW().TB();
    }

    private long aef() {
        return adW().TL();
    }

    private long aeg() {
        return adW().TM();
    }

    private long aee() {
        return adW().Vd();
    }

    private void aej(int i) {
        adW().Ub(i);
    }

    private boolean aei() {
        return adW().SO();
    }
}
