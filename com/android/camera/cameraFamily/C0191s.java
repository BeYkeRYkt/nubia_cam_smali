package com.android.camera.cameraFamily;

import com.android.camera.p020b.C0166d;
import com.android.common.C0616j;
import com.android.common.appService.CameraMember;
import com.p010a.C0090a;

final class C0191s implements C0166d {
    final /* synthetic */ C0181h aGq;

    C0191s(C0181h c0181h) {
        this.aGq = c0181h;
    }

    public void aWl(C0184l c0184l) {
        if (this.aGq.aFC || this.aGq.adA.SO() || this.aGq.aVg()) {
            C0090a.bvo("CameraFamilyFragment", "isSwitchMember: " + this.aGq.aFC + "; ActivityPause: " + this.aGq.adA.SO() + "; CameraFamilyAnimating: " + this.aGq.aVg());
        } else if (c0184l.aGh == CameraMember.VR_CAMERA.aan()) {
            this.aGq.aVq();
        } else if (c0184l.aGh == CameraMember.WLAN_CAMERA.aan()) {
            this.aGq.aVr();
        } else {
            this.aGq.aFC = true;
            if (this.aGq.aFG != c0184l) {
                if (this.aGq.aFG != null) {
                    this.aGq.aFG.aGi.setVisibility(8);
                    this.aGq.aFU.setImageResource(this.aGq.aVo(CameraMember.aap(this.aGq.aFG.aGh)));
                }
                c0184l.aGi.setVisibility(0);
                this.aGq.aFP = this.aGq.aFG;
                this.aGq.aFG = c0184l;
                this.aGq.aVB(c0184l.aGh);
                C0616j.apa(this.aGq.getActivity(), "camera_family", c0184l.mName);
            }
            this.aGq.aVz();
            this.aGq.aFC = false;
        }
    }
}
