package cn.nubia.p000a;

import android.os.IBinder.DeathRecipient;
import com.p010a.C0090a;

final class C0017o implements DeathRecipient {
    final /* synthetic */ C0001a bnU;

    C0017o(C0001a c0001a) {
        this.bnU = c0001a;
    }

    public void binderDied() {
        synchronized (this.bnU.bmq) {
            if (this.bnU.bmp == null) {
                return;
            }
            C0090a.bvo("DualCameraControl", "binderDied");
            this.bnU.bmp.asBinder().unlinkToDeath(this.bnU.bmt, 0);
            this.bnU.bmp = null;
            this.bnU.Sv();
        }
    }
}
