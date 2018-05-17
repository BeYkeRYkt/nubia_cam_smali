package com.android.multiexposure;

import com.android.common.appService.C0329e;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.android.common.ui.C0366P;
import com.android.multiexposure.p039a.C0963a;
import com.p010a.C0090a;

public class C0978m implements C0366P {
    private C0329e alX;
    private C0404b alY;
    private C0974i alZ;

    public C0978m(C0329e c0329e, C0974i c0974i) {
        this.alX = c0329e;
        this.alY = c0329e.SX();
        this.alZ = c0974i;
    }

    public void qe() {
        C0090a.bvm("MultiExposureOnShutterButtonListener", "onShutterButtonClick");
        if (this.alX == null) {
            C0090a.bvo("MultiExposureOnShutterButtonListener", "mAppservcie: null");
        } else if (axv() || !this.alX.Tl()) {
            C0090a.bvo("MultiExposureOnShutterButtonListener", "onshutter fail. paused: " + axv() + "; storageEnough: " + this.alX.Tl());
        } else if (this.alY.Kc() != UIState.NORMAL || this.alY.JZ() != FunctionState.NORMAL || (this.alY.JV() != DeviceState.IDLE && this.alY.JV() != DeviceState.SNAPSHOT_IN_PROGRESS)) {
            C0090a.bvo("MultiExposureOnShutterButtonListener", "uiState: " + this.alY.Kc() + "; functionState: " + this.alY.JZ() + "; DeviceState: " + this.alY.JV());
        } else if (this.alZ == null) {
            C0090a.bvo("MultiExposureOnShutterButtonListener", "mMultiExposureFragment is null!");
        } else {
            C0458b.adi().adj(C0963a.awa(this));
        }
    }

    public void axu() {
        this.alZ.awK();
        this.alZ.awo(true);
        if (this.alZ.alo != null) {
            this.alZ.alo.axI();
        }
    }

    private boolean axv() {
        return this.alX.SO();
    }

    public void qg() {
        qe();
    }

    public void qf(boolean z) {
    }
}
