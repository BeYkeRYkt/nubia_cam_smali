package com.android.common.appService;

import android.util.FloatMath;
import android.view.MotionEvent;
import com.android.common.C0616j;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

public class C0319Y {
    public static int Ul = 30;
    private C0329e Um = null;
    private int Un;
    private float Uo = 0.0f;
    private boolean Up = false;
    private boolean Uq = false;
    private boolean Ur = false;
    private C0320Z Us = null;
    private int Ut;
    private int Uu = -1;
    private float Uv = 0.0f;
    private int Uw = -1;
    private float Ux = 0.0f;
    private float Uy = 20.0f;
    private int Uz = 3;

    public C0319Y(C0329e c0329e) {
        this.Um = c0329e;
        this.Ut = this.Um.Tn().Gm();
        this.Uz = this.Um.Tn().Iw();
    }

    public void acS(C0320Z c0320z) {
        this.Us = c0320z;
    }

    public int acT() {
        return this.Ut;
    }

    public void acL() {
        this.Un = 0;
        if (this.Us != null) {
            this.Us.adc();
        }
    }

    public void acR(boolean z) {
        this.Ur = z;
    }

    public void acK(int i) {
        ada(i, 0);
    }

    private int[] acV(int i, int i2) {
        if (i2 == 0) {
            return new int[]{i};
        }
        return new int[]{(i - i2) - i2, i - i2, i};
    }

    private void ada(int i, int i2) {
        int i3 = 0;
        if (!acY()) {
            C0090a.m1e("ZtemtZoomControl", "Can't setZoomIndex because is taking picture.");
        } else if (this.Uw == -1 || this.Uw != i) {
            this.Uw = i;
            if (i > this.Ut) {
                i = this.Ut;
            } else if (i < 0) {
                i = 0;
            }
            this.Un = i;
            boolean z;
            if ("on".equals(this.Um.SS().getString("pref_big_aperature_key", "off")) || this.Um.SP() == CameraMember.BIG_APERTURE || this.Um.SP() == CameraMember.PHOTO3D) {
                z = true;
            } else {
                z = C0616j.aoM(this.Um.SP(), this.Um.ST());
            }
            try {
                if (!(acW() == null || this.Um.Tr() == null)) {
                    int[] acV = acV(i, i2);
                    while (i3 < acV.length) {
                        synchronized (this.Um.Tr()) {
                            acW().HG(acV[i3]);
                            this.Um.Tr().IQ(acW());
                        }
                        i3++;
                    }
                    if (!(this.Us == null || r1)) {
                        this.Us.adb(i);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            C0090a.m1e("ZtemtZoomControl", "Can't setZoomIndex because is same value.");
        }
    }

    public int acU() {
        return this.Un;
    }

    private C0086j acW() {
        return this.Um.Tn();
    }

    public void acP() {
        if (!acY()) {
            C0090a.m1e("ZtemtZoomControl", "Can't zoomIn because is taking picture.");
        } else if (this.Un != this.Ut) {
            if (this.Uq) {
                this.Un += this.Uz;
                if (this.Un >= Ul - 1) {
                    this.Un = Ul;
                }
            } else {
                this.Un += this.Uz;
            }
            if (this.Un > this.Ut) {
                this.Un = this.Ut;
            }
            ada(this.Un, 1);
        }
    }

    public void acQ() {
        if (!acY()) {
            C0090a.m1e("ZtemtZoomControl", "Can't zoomOut because is taking picture.");
        } else if (this.Un != 0) {
            this.Un -= this.Uz;
            if (this.Un < 0) {
                this.Un = 0;
            }
            ada(this.Un, -1);
        }
    }

    public void acN() {
        this.Uu = -1;
    }

    public boolean acM(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent == null) {
            return false;
        }
        int pointerCount = motionEvent.getPointerCount();
        switch (motionEvent.getAction() & 255) {
            case 1:
            case 3:
                if (this.Uu != 0) {
                    z = false;
                }
                this.Uu = -1;
                this.Up = false;
                this.Uq = false;
                break;
            case 2:
                if (this.Uu == 0 && pointerCount == 2) {
                    if (acZ() && !this.Uq && this.Un < Ul - 1) {
                        this.Uq = true;
                    }
                    this.Uv = acX(motionEvent);
                    this.Uo = this.Uv - this.Ux;
                    if (this.Uo >= this.Uy) {
                        acP();
                        this.Ux = this.Uv;
                    } else if (this.Uo <= (-this.Uy)) {
                        acQ();
                        this.Ux = this.Uv;
                    }
                }
                if (this.Uu != 0) {
                    z = false;
                    break;
                }
                break;
            case 5:
                if (pointerCount == 2 && this.Up) {
                    this.Uu = 0;
                    this.Ux = acX(motionEvent);
                    if (acZ() && !this.Uq && this.Un < Ul - 1) {
                        this.Uq = true;
                    }
                }
                if (this.Uu != 0) {
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    private float acX(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return FloatMath.sqrt((x * x) + (y * y));
    }

    public void acO(boolean z) {
        this.Up = z;
    }

    private boolean acY() {
        boolean z = false;
        if (this.Um == null || this.Um.SX().JZ() == FunctionState.INTERVAL || this.Um.SX().JZ() == FunctionState.DELAY_SHOOT) {
            return false;
        }
        if (this.Um.SX().JV() != DeviceState.SNAPSHOT_IN_PROGRESS) {
            z = true;
        }
        return z;
    }

    private boolean acZ() {
        boolean z = false;
        if (this.Um == null) {
            return false;
        }
        if (this.Ur && this.Um.SQ() == C0384o.Jr().Js()) {
            z = true;
        }
        return z;
    }
}
