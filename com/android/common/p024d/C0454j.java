package com.android.common.p024d;

import android.hardware.Camera.ShutterCallback;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0454j implements C0448l {
    private C0329e Ow = null;
    private C0451f Ox = null;
    private ShutterCallback Oy = null;

    public C0454j(C0329e c0329e) {
        this.Ow = c0329e;
        this.Ox = new C0451f(c0329e);
        this.Oy = new C0455k();
    }

    public boolean QM() {
        C0090a.bvo("QCOMContinousShot", "startMultiShoot");
        if (this.Ow.SX().JX(FunctionState.QUALITY_MULTISHOOTING)) {
            this.Ow.Tj(true);
            this.Ow.Tk(true);
            Ri().Jh(true);
            this.Ow.SX().JY(FunctionState.QUALITY_MULTISHOOTING);
            this.Ow.SZ(4);
            this.Ox.QP(C0701s.aqX() + "/" + this.Ow.SN().getString(R.string.contents_multiShoot) + '/' + C0616j.aoO(System.currentTimeMillis()));
            this.Ox.QQ(true);
            this.Ow.Th().afh(false);
            C0458b.adi().adl();
            return true;
        }
        C0090a.bvo("QCOMContinousShot", "FunctionState: " + this.Ow.SX().JZ());
        return false;
    }

    public boolean QN() {
        C0090a.bvo("QCOMContinousShot", "stopMultiShoot");
        if (this.Ow.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING) {
            C0090a.bvo("QCOMContinousShot", "FunctionState: " + this.Ow.SX().JZ());
            return false;
        }
        this.Ow.Tj(false);
        this.Ow.Xf();
        this.Ow.Tk(false);
        Ri().Jh(false);
        this.Ow.Th().afh(true);
        this.Ox.QQ(false);
        this.Ow.SX().JW(FunctionState.QUALITY_MULTISHOOTING);
        this.Ow.SX().Kd(DeviceState.IDLE);
        this.Ow.SY().tW();
        if ("continuous-picture".equals(this.Ow.Tn().Ge())) {
            Ri().IT();
        }
        this.Ow.SZ(4);
        C0458b.adi().adk();
        return true;
    }

    public boolean QK() {
        if (this.Ow.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING) {
            C0090a.bvo("QCOMContinousShot", "FunctionState: " + this.Ow.SX().JZ() + ", not support to continous shot");
            return false;
        }
        Ri().IN(false);
        synchronized (Ri()) {
            Ri().IO(this.Oy, null, null, this.Ox);
        }
        this.Ow.Wa();
        return true;
    }

    private C0382m Ri() {
        return C0384o.Jr().Jw(this.Ow.SQ());
    }
}
