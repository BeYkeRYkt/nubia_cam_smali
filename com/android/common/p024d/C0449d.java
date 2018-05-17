package com.android.common.p024d;

import android.hardware.Camera.ShutterCallback;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.cameradevice.C0387s;
import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0449d implements C0387s, C0448l {
    private C0329e Oe = null;
    private boolean Of = false;
    private C0451f Og = null;
    private ShutterCallback Oh = null;

    public C0449d(C0329e c0329e) {
        this.Oe = c0329e;
        this.Og = new C0451f(c0329e);
        this.Oh = new C0450e();
    }

    public boolean QM() {
        C0090a.bvo("MTKContinousShot", "startMultiShoot");
        if (!this.Oe.SX().JX(FunctionState.QUALITY_MULTISHOOTING) || this.Of) {
            C0090a.bvo("MTKContinousShot", "ContinousShotStarted: " + this.Of);
            return false;
        }
        this.Oe.Tj(true);
        this.Oe.Tk(true);
        this.Oe.SX().JY(FunctionState.QUALITY_MULTISHOOTING);
        this.Oe.SZ(4);
        this.Og.QP(C0701s.aqX() + "/" + this.Oe.SN().getString(R.string.contents_multiShoot) + '/' + C0616j.aoO(System.currentTimeMillis()));
        this.Og.QQ(true);
        this.Oe.Th().afh(false);
        QL().IX(this);
        this.Of = true;
        C0458b.adi().adl();
        return true;
    }

    public boolean QN() {
        C0090a.bvo("MTKContinousShot", "stopMultiShoot");
        if (this.Oe.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING && this.Of) {
            this.Oe.Tj(false);
            this.Oe.Xf();
            this.Oe.Tk(false);
            this.Oe.Th().afh(true);
            QL().Je();
            this.Of = false;
            this.Og.QQ(false);
            return true;
        }
        C0090a.bvo("MTKContinousShot", "ContinousShotStarted: " + this.Of + "; functionState: " + this.Oe.SX().JZ());
        return false;
    }

    public boolean QK() {
        if (this.Oe.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING) {
            C0090a.bvo("MTKContinousShot", "FunctionState: " + this.Oe.SX().JZ() + ", not support to continous shot");
            return false;
        }
        QL().IN(false);
        synchronized (QL()) {
            QL().IO(this.Oh, null, null, this.Og);
        }
        this.Oe.Wa();
        return true;
    }

    private C0382m QL() {
        return C0384o.Jr().Jw(this.Oe.SQ());
    }
}
