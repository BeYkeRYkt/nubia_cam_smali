package com.android.common.independentFocusExposure;

import android.content.SharedPreferences;
import com.android.camera.R;
import com.android.common.appService.C0305G;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public class C0584a {
    private C0329e JW = null;

    public C0584a(C0329e c0329e) {
        this.JW = c0329e;
    }

    private boolean Lg() {
        return this.JW.SY().tz();
    }

    private boolean Lh() {
        return this.JW.SY().tA();
    }

    public void Lu(int i, int i2) {
        if ((Lg() || Lh()) && this.JW.SQ() != C0384o.Jr().Jt()) {
            this.JW.Tc().LB(i, i2);
            if ((this.JW.Td().No(i, i2) | this.JW.Te().OH(i, i2)) != 0) {
                this.JW.SZ(8);
            }
        }
    }

    public void Lt() {
        if (Lo()) {
            this.JW.Te().OI();
        }
        if (Lm()) {
            this.JW.Tc().LC();
        }
        if (Lk() && this.JW.SP() != CameraMember.FACTORYTEST && this.JW.SP() != CameraMember.DUALCAMERACALIBRATION) {
            this.JW.Td().Np();
        }
    }

    private boolean Lf() {
        if (this.JW.Tf() != null) {
            return this.JW.Tf().sS();
        }
        return false;
    }

    public void Lr(boolean z) {
        if (Lf()) {
            C0090a.bvm("FocusExposureMwbManager", "FaceTrackingFocusSupported and faceExists, return");
            return;
        }
        if (Ll()) {
            this.JW.Tc().LD(z);
            this.JW.Td().Nq(z);
            this.JW.Te().OJ(z);
        }
    }

    public void Lx() {
        this.JW.Te().OK();
        this.JW.Tc().LE();
        this.JW.Td().Nr();
    }

    public boolean Lm() {
        if (this.JW.Tc().LF() == CameraFocusService$FocusIndicatorState.FOCUSED && this.JW.Td().Ns() == CameraExposureService$ExposureIndicatorState.IDLE) {
            return true;
        }
        return false;
    }

    public boolean Lk() {
        return this.JW.Td().Ns() == CameraExposureService$ExposureIndicatorState.FOCUSED;
    }

    public boolean Lo() {
        return this.JW.Te().OL() == MwbService$WbIndicatorState.FOCUSED;
    }

    public void Lj(C0305G c0305g) {
        if (this.JW.SQ() != C0384o.Jr().Jt()) {
            this.JW.Td().Nt(this.JW.SN(), c0305g);
            this.JW.Tc().LG(this.JW.SN(), c0305g);
            this.JW.Te().OM(this.JW.SN(), c0305g);
        }
    }

    public void LA(C0305G c0305g) {
        this.JW.Tc().LH(c0305g);
        this.JW.Td().Nu(c0305g);
        this.JW.Te().ON(c0305g);
    }

    public void Ls() {
        this.JW.Tc().LI();
        this.JW.Td().Nv();
        this.JW.Te().OO();
        Lx();
    }

    public void Lz(int i) {
        this.JW.Tc().setVisibility(i);
        this.JW.Td().setVisibility(i);
        this.JW.Te().setVisibility(i);
    }

    public boolean Ll() {
        CameraMember SP = this.JW.SP();
        if (SP == CameraMember.STARCLOUD || SP == CameraMember.STARTRACK || SP == CameraMember.LIGHTDRAW) {
            return false;
        }
        return true;
    }

    public void Lq(boolean z) {
        this.JW.Td().Nw(z);
        this.JW.Tc().LJ(z);
        this.JW.Te().OP(z);
        this.JW.SZ(8);
    }

    public boolean Lp() {
        return Li().getString("pref_camera_shutter_priority_key", this.JW.SN().getString(R.string.pref_camera_shutter_priority_key_default)).equals("off");
    }

    public void Lv() {
        this.JW.Tc().LK();
        this.JW.Td().Nx();
        this.JW.Te().OQ();
    }

    public boolean Ln() {
        if (this.JW.Tc().LL() || this.JW.Td().Ny()) {
            return true;
        }
        return this.JW.Te().OR();
    }

    public void Ly() {
        this.JW.Tc().LM();
        this.JW.Td().Nz();
        this.JW.Te().OS();
    }

    public void Le() {
        this.JW.Tc().LN();
        this.JW.Td().NA();
        this.JW.Te().OT();
    }

    public void Lw() {
        this.JW.Tc().LO();
        this.JW.Td().NB();
        this.JW.Te().OU();
    }

    private SharedPreferences Li() {
        return this.JW.SS();
    }
}
