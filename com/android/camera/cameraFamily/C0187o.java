package com.android.camera.cameraFamily;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C0187o extends Handler {
    final /* synthetic */ C0181h aGm;

    C0187o(C0181h c0181h) {
        this.aGm = c0181h;
    }

    public void handleMessage(Message message) {
        if (this.aGm.isVisible() && !this.aGm.adA.SO()) {
            switch (message.what) {
                case 1:
                    C0090a.bvo("CameraFamilyFragment", "first init views and state");
                    this.aGm.aVC();
                    this.aGm.aVw();
                    break;
            }
        }
    }
}
