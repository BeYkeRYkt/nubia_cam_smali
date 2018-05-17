package cn.nubia.p000a;

import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.os.RemoteException;
import cn.nubia.bigAperture.BigApertureProcess;
import cn.nubia.bigAperture.C0027c;
import cn.nubia.bigAperture.C0039o;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0002Q;
import com.android.common.appService.C0329e;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0421M;
import com.android.common.independentFocusExposure.C0598n;
import com.android.common.p015f.C0527b;
import com.android.common.setting.C0716s;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0003b implements C0002Q {
    private int bmA;
    private Rect bmB = null;
    private int bmC;
    private C0329e bmx = null;
    private C0004c bmy = null;
    private BigApertureProcess bmz = null;

    public C0003b(C0329e c0329e) {
        this.bmx = c0329e;
        this.bmA = C0384o.Jr().Js();
        this.bmC = C0384o.Jr().Jx();
        this.bmB = new Rect();
    }

    public void bIQ(ArrayList arrayList) {
        if (3 == ((Integer) arrayList.get(0)).intValue() && 16 == ((Integer) arrayList.get(1)).intValue()) {
            C0616j.aoZ(new RectF((float) ((Integer) arrayList.get(2)).intValue(), (float) ((Integer) arrayList.get(3)).intValue(), (float) (((Integer) arrayList.get(2)).intValue() + ((Integer) arrayList.get(4)).intValue()), (float) (((Integer) arrayList.get(3)).intValue() + ((Integer) arrayList.get(5)).intValue())), this.bmB);
        }
    }

    private Rect bIX() {
        try {
            if (!bJb(this.bmB)) {
                return null;
            }
        } catch (Exception e) {
        }
        return this.bmB;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean bJb(android.graphics.Rect r5) {
        /*
        r4 = this;
        r3 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r1 = -1000; // 0xfffffffffffffc18 float:NaN double:NaN;
        r2 = 0;
        r0 = r5.left;
        if (r0 != 0) goto L_0x0016;
    L_0x0009:
        r0 = r5.right;
        if (r0 != 0) goto L_0x0016;
    L_0x000d:
        r0 = r5.top;
        if (r0 != 0) goto L_0x0016;
    L_0x0011:
        r0 = r5.bottom;
        if (r0 != 0) goto L_0x0016;
    L_0x0015:
        return r2;
    L_0x0016:
        r0 = r5.left;
        if (r0 >= r1) goto L_0x001b;
    L_0x001a:
        return r2;
    L_0x001b:
        r0 = r5.top;
        if (r0 >= r1) goto L_0x0020;
    L_0x001f:
        return r2;
    L_0x0020:
        r0 = r5.right;
        if (r0 > r3) goto L_0x0028;
    L_0x0024:
        r0 = r5.bottom;
        if (r0 <= r3) goto L_0x0029;
    L_0x0028:
        return r2;
    L_0x0029:
        r0 = r5.left;
        r1 = r5.right;
        if (r0 < r1) goto L_0x0030;
    L_0x002f:
        return r2;
    L_0x0030:
        r0 = r5.top;
        r1 = r5.bottom;
        if (r0 < r1) goto L_0x0037;
    L_0x0036:
        return r2;
    L_0x0037:
        r0 = 1;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.a.b.bJb(android.graphics.Rect):boolean");
    }

    public void bIR(BigApertureProcess bigApertureProcess) {
        this.bmz = bigApertureProcess;
        if (this.bmy != null) {
            this.bmy.bJf(this.bmz);
        }
    }

    public boolean QK() {
        if (this.bmA == -1 || this.bmC == -1) {
            C0090a.bvo("DualCameraCapture", "Camera id not found. ColorId: " + this.bmA + ", MonoId: " + this.bmC);
            return false;
        }
        int bIU;
        C0090a.m1e("DualCameraCapture", "takePicture");
        bIV(this.bmA).IN(bJe());
        bIV(this.bmC).IN(bJe());
        synchronized (bIV(this.bmA)) {
            if (bIW() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
                bIU = bIU();
            } else {
                if (!bJa()) {
                    C0090a.bvo("DualCameraCapture", "Process not connected. Try to reconnect bigAperture service");
                    this.bmx.SM().arD().Sv();
                }
                bIU = bIS();
            }
        }
        this.bmx.SX().Kd(DeviceState.SNAPSHOT_IN_PROGRESS);
        C0090a.bvo("DualCameraCapture", "burstNum: " + bIU);
        this.bmx.Ub(bIU);
        this.bmx.Uc();
        return true;
    }

    private boolean bJa() {
        boolean z = false;
        try {
            if (!(this.bmz == null || this.bmz.getBigApertureTmpDir() == null)) {
                z = true;
            }
            return z;
        } catch (RemoteException e) {
            e.printStackTrace();
            C0090a.bvo("DualCameraCapture", "isAperProcessAlive: false");
            return false;
        }
    }

    public void bIP() {
        if (this.bmy != null) {
            this.bmy.release();
        }
    }

    private void bJc(C0086j c0086j) {
        if (C0421M.dC().dD().bD()) {
            C0598n Te = this.bmx.Te();
            if (!Te.OY() || Te.OZ()) {
                c0086j.GV(0);
            } else {
                c0086j.GV(1);
            }
            float[] Pa = Te.Pa();
            c0086j.GU(Pa[0], Pa[1], Pa[2]);
        }
    }

    private int bIU() {
        PictureCallback pictureCallback;
        int i = 0;
        PictureCallback c0009g = new C0009g(this.bmx, this.bmA, null);
        boolean z = this.bmx.Tn().getInt("fusion_no_need_1x", 0) == 1;
        C0090a.bvo("DualCameraCapture", "fusionNoNeed1X: " + z);
        if (z) {
            pictureCallback = null;
        } else {
            pictureCallback = new C0009g(this.bmx, this.bmC, null);
        }
        bJd(bIY());
        this.bmx.SU().St(true);
        bIV(this.bmC).IO(null, null, null, pictureCallback);
        bIV(this.bmA).IO(new C0527b(this.bmx), null, null, c0009g);
        if (pictureCallback != null) {
            i = 1;
        }
        return i + 1;
    }

    private int bIS() {
        C0006k bIT = bIT(this.bmx.TI(), bIY());
        bJd(0);
        Size Gr = bIZ(this.bmA).Gr();
        Size Gr2 = bIZ(this.bmC).Gr();
        int i = ((Gr.height * Gr.width) * 3) / 2;
        int i2 = ((Gr2.height * Gr2.width) * 3) / 2;
        C0384o.Jr().Jw(this.bmA).IR(new byte[i]);
        C0384o.Jr().Jw(this.bmC).IR(new byte[i2]);
        bIV(this.bmA).IO(new C0527b(this.bmx), new C0014l(this.bmA, this.bmx, bIT), new C0012i(this.bmA, this.bmx, bIT), new C0009g(this.bmx, this.bmA, bIT));
        bIV(this.bmC).IO(null, new C0014l(this.bmC, this.bmx, bIT), null, new C0009g(this.bmx, this.bmC, bIT));
        return 2;
    }

    private void bJd(int i) {
        Location age = this.bmx.Tq().age();
        synchronized (bIV(this.bmA)) {
            C0616j.apf(this.bmx.SN(), bIZ(this.bmA), age);
            C0616j.apf(this.bmx.SN(), bIZ(this.bmC), age);
            bIZ(this.bmA).Hz(i);
            bIZ(this.bmC).Hz(i);
            bJc(bIZ(this.bmA));
            bIV(this.bmA).IQ(bIZ(this.bmA));
            bIV(this.bmC).IQ(bIZ(this.bmC));
        }
    }

    private C0006k bIT(long j, int i) {
        if (this.bmy == null) {
            this.bmy = new C0004c(this.bmx.SN());
            this.bmy.bJf(this.bmz);
        }
        float f = this.bmx.SS().getFloat("pref_bigaperture_pic_bokeh_level", C0716s.zn());
        float f2 = this.bmx.SS().getFloat("pref_bigaperture_focus_length", 2.0f);
        Size Gr = bIZ(this.bmA).Gr();
        Size Gr2 = bIZ(this.bmC).Gr();
        C0039o bKu = C0027c.bKu(bIZ(this.bmC).FX("altek-back-sub-crop-size"));
        if (bKu != null) {
            Gr2.width = bKu.bLR();
            Gr2.height = bKu.bLS();
        }
        return this.bmy.bJg(j, i, bIX(), f, f2, Gr, Gr2, C0616j.apd(this.bmx), null);
    }

    private boolean bJe() {
        return this.bmx.SS().getString("pref_camera_shutter_sound_key", this.bmx.Tb(R.string.pref_camera_shutter_sound_default)).equals("on");
    }

    private int bIY() {
        return this.bmx.TW();
    }

    private C0382m bIV(int i) {
        return C0384o.Jr().Jw(i);
    }

    private C0086j bIZ(int i) {
        return this.bmx.Ud(i);
    }

    private IDualCameraControl$DualCameraMode bIW() {
        return this.bmx.SM().arD().Sz();
    }
}
