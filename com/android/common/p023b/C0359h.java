package com.android.common.p023b;

import android.content.SharedPreferences;
import android.hardware.Camera;
import android.hardware.Camera.Face;
import android.hardware.Camera.FaceDetectionListener;
import com.android.common.appService.C0307J;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import com.android.common.ui.FaceView;

public class C0359h implements FaceDetectionListener {
    private C0329e Jh = null;
    private C0360i Ji;
    private C0307J Jj = null;

    public C0359h(C0329e c0329e) {
        this.Jh = c0329e;
        this.Ji = new C0360i(this);
        this.Jj = new C0307J(c0329e);
    }

    public void onFaceDetection(Face[] faceArr, Camera camera) {
        boolean z = true;
        if (!this.Jh.SO()) {
            FaceView Tf = this.Jh.Tf();
            this.Jh.Wy(faceArr);
            String string = KD().getString("pref_camera_facedetection_key", C0421M.dC().dD().bj());
            CameraMember SP = this.Jh.SP();
            if (Tf != null && "on".equals(string) && this.Jh.SM().arD().SB() && SP != CameraMember.VIDEO_RECORD) {
                Tf.sW(faceArr);
                Tf.sT(this.Jh.TN());
                if (C0384o.Jr().Ju()[this.Jh.SQ()].facing != 1) {
                    z = false;
                }
                Tf.sU(z);
                if (Tf.getVisibility() == 8) {
                    Tf.setVisibility(0);
                }
            }
            if (KB() != null && KC() != null) {
                z = this.Jj.abr();
                boolean abs = this.Jj.abs();
                if (z) {
                    if (!abs) {
                        this.Jj.abt();
                    }
                } else if (abs) {
                    this.Jj.close();
                }
                this.Ji.KI(faceArr);
            }
        }
    }

    public void Kz() {
        this.Jj.close();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean KE(android.graphics.Rect r5) {
        /*
        r4 = this;
        r3 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r2 = -1000; // 0xfffffffffffffc18 float:NaN double:NaN;
        r1 = 0;
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
        return r1;
    L_0x0016:
        r0 = r5.left;
        if (r0 < r2) goto L_0x001e;
    L_0x001a:
        r0 = r5.top;
        if (r0 >= r2) goto L_0x001f;
    L_0x001e:
        return r1;
    L_0x001f:
        r0 = r5.right;
        if (r0 > r3) goto L_0x0027;
    L_0x0023:
        r0 = r5.bottom;
        if (r0 <= r3) goto L_0x0028;
    L_0x0027:
        return r1;
    L_0x0028:
        r0 = 1;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.b.h.KE(android.graphics.Rect):boolean");
    }

    private C0329e KA() {
        return this.Jh;
    }

    private SharedPreferences KD() {
        return KA().SS();
    }

    private C0086j KC() {
        return KA().Tn();
    }

    private C0382m KB() {
        return KA().Tr();
    }
}
