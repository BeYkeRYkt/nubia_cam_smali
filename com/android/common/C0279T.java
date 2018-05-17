package com.android.common;

import com.android.common.camerastate.DeviceState;
import com.android.common.p016a.C0278b;
import com.p010a.C0090a;

final class C0279T implements C0278b {
    final /* synthetic */ ActivityBase akK;

    C0279T(ActivityBase activityBase) {
        this.akK = activityBase;
    }

    public void mo419E() {
        this.akK.auZ();
    }

    public void mo420F() {
        if (this.akK.asG() != null && this.akK.asJ() != DeviceState.NOT_INITIALIZED && this.akK.asJ() != DeviceState.PREVIEW_STOPPED) {
            C0090a.bvo("ActivityBase", "surfaceDestroy call stopPreview");
            this.akK.auW();
        }
    }
}
