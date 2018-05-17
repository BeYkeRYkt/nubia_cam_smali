package com.android.common.appService;

import android.content.SharedPreferences;
import android.media.MediaPlayer;
import android.media.SoundPool;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

public class C0316U {
    private static C0316U Uh = null;
    private int TW = 0;
    private boolean TX = false;
    private C0329e TY = null;
    private C0404b TZ = null;
    private String Ua;
    private C0317W Ub = new C0317W();
    private C0113V Uc = null;
    private MediaPlayer Ud = null;
    private MediaPlayer Ue = null;
    private SoundPool Uf = null;
    private C0318X Ug = null;

    public C0316U(C0329e c0329e) {
        this.TY = c0329e;
        this.TZ = c0329e.SX();
    }

    public void ack() {
        if (this.Uc != null) {
            this.Uc.acF();
        }
    }

    public void acm(C0113V c0113v) {
        this.Uc = c0113v;
    }

    public boolean acl(long j) {
        if (this.TX) {
            C0090a.bvo("ZtemtDelayShoot", "delayshoot already running, just end delayShoot");
            acn(false);
            return false;
        }
        C0090a.bvo("ZtemtDelayShoot", "start delayShoot");
        if (this.TZ.JX(FunctionState.DELAY_SHOOT)) {
            act(j);
        }
        return true;
    }

    private void act(long j) {
        if (!this.TX) {
            aco().Tk(true);
            if (this.Uc != null) {
                this.Uc.acG();
            }
            this.TX = true;
            this.TZ.JY(FunctionState.DELAY_SHOOT);
            this.Ug = new C0318X(this, j, 500);
            this.Ug.start();
        }
    }

    private C0329e aco() {
        return this.TY;
    }

    public void acn(boolean z) {
        if (this.TX) {
            this.TX = false;
            this.TZ.JW(FunctionState.DELAY_SHOOT);
            if (this.Uc != null) {
                this.Uc.acE();
            }
            if (this.Ud != null) {
                this.Ud.stop();
                this.Ud.release();
                this.Ud = null;
            }
            if (this.Ue != null) {
                this.Ue.stop();
                this.Ue.release();
                this.Ue = null;
            }
            if (z) {
                aco().Tk(false);
            }
            this.Ug.cancel();
            this.Ug = null;
            if (this.Uc != null) {
                this.Uc.acD();
            }
            this.Ub.removeMessages(0);
        }
    }

    private void acr() {
        acp();
        aco().Tn().Hb("torch");
        aco().Tr().IQ(aco().Tn());
    }

    private void acp() {
        this.Ua = aco().Tn().Gc();
    }

    private void acs() {
        aco().Tn().Hb(this.Ua);
        aco().Tr().IQ(aco().Tn());
    }

    private SharedPreferences acq() {
        return this.TY.SS();
    }
}
