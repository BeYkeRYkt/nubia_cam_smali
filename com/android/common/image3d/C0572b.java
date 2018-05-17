package com.android.common.image3d;

import android.content.Context;
import android.util.Log;

public class C0572b implements C0571k {
    private float EA = 0.0f;
    private float EB = 0.0f;
    private float EC = 0.0f;
    private int ED = 0;
    private C0576f EE = null;
    private boolean EF = false;
    private boolean EG = true;
    private boolean EH = false;
    private long EI = 0;
    private C0573c EJ = null;
    private C0580j EK = null;
    private float EL = 0.0f;
    private float EM = 0.0f;
    private float EN = 0.0f;
    private int EO = 0;

    public C0572b(Context context) {
        this.EK = new C0580j(context);
        this.EE = new C0576f();
        this.EK.Dq(0);
        this.EK.Dr(this);
    }

    public void CW(C0573c c0573c) {
        this.EJ = c0573c;
    }

    public void start() {
        if (!this.EH) {
            CU();
            Log.i("TakenPictureController", "start");
            this.EK.Ds();
            this.EH = true;
        }
    }

    public void stop() {
        if (this.EH) {
            Log.i("TakenPictureController", "stop");
            this.EK.Dt();
            this.EH = false;
        }
    }

    public void CT(float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.EJ != null && CS(f, f2, f3, f4, f5, f6)) {
            this.EO++;
            this.EJ.CY();
        }
    }

    public int CQ() {
        return this.EE.Dd();
    }

    public float CR() {
        return this.EE.De();
    }

    private boolean CS(float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.EG) {
            this.EG = false;
            this.EL = f2;
            this.EM = f4;
            this.EN = f6;
            this.EE.Df(0.0f, 0.0f);
            this.EJ.CX(0);
            this.EI = System.currentTimeMillis();
            return true;
        }
        this.EE.Df(f2 - this.EL, f4 - this.EM);
        this.EA += f;
        this.EB += f3;
        this.EC += f5;
        if (System.currentTimeMillis() - this.EI < 33) {
            return false;
        }
        if (this.EF) {
            int Dd = this.EE.Dd();
            Object obj = null;
            switch (Dd) {
                case 1:
                    if (this.EB > -0.5f) {
                        if (this.EB >= 5.0f) {
                            this.EJ.CX(-1);
                            break;
                        }
                    }
                    obj = 1;
                    if (this.ED != Dd) {
                        this.EJ.CX(Dd);
                        this.ED = Dd;
                        break;
                    }
                    break;
                case 2:
                    if (this.EB < 0.5f) {
                        if (this.EB <= -5.0f) {
                            this.EJ.CX(-1);
                            break;
                        }
                    }
                    obj = 1;
                    if (this.ED != Dd) {
                        this.EJ.CX(Dd);
                        this.ED = Dd;
                        break;
                    }
                    break;
                case 3:
                    if (this.EA < 0.5f) {
                        if (this.EA <= -5.0f) {
                            this.EJ.CX(-1);
                            break;
                        }
                    }
                    obj = 1;
                    if (this.ED != Dd) {
                        this.EJ.CX(Dd);
                        this.ED = Dd;
                        break;
                    }
                    break;
                case 4:
                    if (this.EA > -0.5f) {
                        if (this.EA >= 5.0f) {
                            this.EJ.CX(-1);
                            break;
                        }
                    }
                    obj = 1;
                    if (this.ED != Dd) {
                        this.EJ.CX(Dd);
                        this.ED = Dd;
                        break;
                    }
                    break;
            }
            if (obj == null) {
                return false;
            }
            CV();
            this.EI = System.currentTimeMillis();
            return true;
        } else if (this.EE.De() >= 3.0f) {
            this.EF = true;
            CV();
            Log.d("TakenPictureController", "=====HAS GOT THE DIRECTION====");
            this.ED = this.EE.Dd();
            this.EJ.CX(this.ED);
            this.EI = System.currentTimeMillis();
            return true;
        } else if (((float) Math.sqrt((double) (((this.EA * this.EA) + (this.EB * this.EB)) + (this.EC * this.EC)))) <= 0.5f) {
            return false;
        } else {
            CV();
            this.EI = System.currentTimeMillis();
            return true;
        }
    }

    private void CU() {
        CV();
        this.EE.Dg();
        this.EG = true;
        this.EF = false;
        this.EO = 0;
        this.EL = 0.0f;
        this.EM = 0.0f;
        this.EN = 0.0f;
    }

    private void CV() {
        this.EA = 0.0f;
        this.EB = 0.0f;
        this.EC = 0.0f;
    }
}
