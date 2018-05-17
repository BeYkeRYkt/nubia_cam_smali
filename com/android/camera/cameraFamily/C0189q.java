package com.android.camera.cameraFamily;

import com.p010a.C0090a;
import java.lang.Thread.State;
import java.util.List;

final class C0189q implements C0176d {
    final /* synthetic */ C0181h aGo;

    C0189q(C0181h c0181h) {
        this.aGo = c0181h;
    }

    public void aUF(List list) {
        if (!this.aGo.adC) {
            if (this.aGo.aFO.getState() == State.NEW) {
                this.aGo.aFO.start();
            } else if (this.aGo.aFS == null && this.aGo.aFO.getState() == State.TERMINATED && this.aGo.aGa != null) {
                C0090a.bvo("CameraFamilyFragment", "second init views and state");
                this.aGo.aVC();
                this.aGo.aVw();
            } else {
                this.aGo.aVC();
            }
        }
    }
}
