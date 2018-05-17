package com.android.camera.cameraFamily;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C0190r implements OnClickListener {
    final /* synthetic */ C0181h aGp;

    C0190r(C0181h c0181h) {
        this.aGp = c0181h;
    }

    public void onClick(View view) {
        if (this.aGp.aVg() || !this.aGp.adD.JX(UIState.CAMERA_FAMILY)) {
            C0090a.bvo("CameraFamilyFragment", "cameraFamilyAnimating: " + this.aGp.aVg());
        } else {
            C0458b.adi().adj(this.aGp.aVp());
        }
    }
}
