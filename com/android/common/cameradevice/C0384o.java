package com.android.common.cameradevice;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import com.android.common.C0616j;
import com.p010a.C0090a;

public class C0384o {
    private static C0382m[] HD;
    private static CameraInfo[] HE;
    private static C0385p[] HI;
    private static C0380k[] HJ;
    private static C0384o HK;
    private int HA = -1;
    private int HB = -1;
    private final CameraInfo[] HC;
    private int HF = -1;
    private final int HG;
    private int HH = -1;

    public static synchronized C0384o Jr() {
        C0384o c0384o;
        synchronized (C0384o.class) {
            if (HK == null) {
                HK = new C0384o();
            }
            c0384o = HK;
        }
        return c0384o;
    }

    private C0384o() {
        int i = 0;
        if (HE != null) {
            this.HG = HE.length;
            this.HC = HE;
        } else {
            this.HG = Camera.getNumberOfCameras();
            this.HC = new CameraInfo[this.HG];
            for (int i2 = 0; i2 < this.HG; i2++) {
                this.HC[i2] = new CameraInfo();
                Camera.getCameraInfo(i2, this.HC[i2]);
            }
        }
        HI = new C0385p[this.HG];
        HJ = new C0380k[this.HG];
        while (i < this.HG) {
            if (this.HA == -1 && this.HC[i].facing == 0) {
                this.HA = i;
            } else if (this.HB == -1 && this.HC[i].facing == 1) {
                this.HB = i;
            } else if ((this.HF == -1 && this.HC[i].facing == 2) || (this.HF == -1 && this.HA != -1 && this.HC[i].facing == 0)) {
                this.HF = i;
            } else if (this.HH == -1 && this.HC[i].facing == 1 && this.HB != -1) {
                this.HH = i;
            }
            HI[i] = null;
            HJ[i] = null;
            i++;
        }
    }

    public int Jv() {
        return this.HG;
    }

    public CameraInfo[] Ju() {
        return this.HC;
    }

    public C0382m Jw(int i) {
        if (i == -1) {
            return null;
        }
        return JD(i).JE();
    }

    public C0086j Jz(int i) {
        if (i == -1) {
            return null;
        }
        return JD(i).JF();
    }

    public synchronized C0382m Jy(int i) {
        C0090a.m1e("CameraHolder", "CameraProxy open. mCameraId = " + i);
        C0616j.apn(i != -1);
        if (HE == null) {
            JD(i).JI();
        } else {
            JD(i).JG(HD[i]);
        }
        return JD(i).JE();
    }

    private C0385p JD(int i) {
        if (HJ[i] == null) {
            HJ[i] = new C0380k(i);
        }
        if (HI[i] == null) {
            HI[i] = new C0385p(this, i, HJ[i]);
        }
        return HI[i];
    }

    public C0382m JA(int i) {
        return JD(i).JJ();
    }

    public void JC(int i) {
        if (JD(i).JE() != null) {
            C0090a.bvm("CameraHolder", "CameraHolder release cameraId: " + i);
            JD(i).release();
        }
    }

    public void release() {
        for (int i = 0; i < HI.length; i++) {
            if (JD(i).JE() != null) {
                C0090a.bvm("CameraHolder", "CameraHolder release cameraId: " + i);
                JD(i).release();
            }
        }
    }

    public synchronized void JB(int i) {
        JD(i).JH();
    }

    public int Js() {
        return this.HA;
    }

    public int Jt() {
        return this.HB;
    }

    public int Jx() {
        return this.HF;
    }
}
