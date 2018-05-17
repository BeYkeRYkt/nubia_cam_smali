package cn.nubia.p000a;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C0016n extends Handler {
    final /* synthetic */ C0001a bnT;

    C0016n(C0001a c0001a) {
        this.bnT = c0001a;
    }

    public void handleMessage(Message message) {
        C0090a.bvo("DualCameraControl", "msg: " + message.what);
        switch (message.what) {
            case 1:
                this.bnT.bms = true;
                return;
            default:
                return;
        }
    }
}
