package cn.nubia.bigAperture;

import android.os.Handler;
import android.os.Message;

final class C0043s extends Handler {
    final /* synthetic */ C0032h bpP;

    C0043s(C0032h c0032h) {
        this.bpP = c0032h;
    }

    public void handleMessage(Message message) {
        Object obj = 1;
        this.bpP.bLe("handleMsg: " + message.what);
        switch (message.what) {
            case 3:
                if (!this.bpP.boD && this.bpP.bLa("com.android.camera", this.bpP.box)) {
                    obj = null;
                }
                if (obj != null) {
                    synchronized (this.bpP.boG) {
                        if (this.bpP.boG.isEmpty() && this.bpP.boL == null) {
                            this.bpP.bLk();
                        }
                    }
                    return;
                }
                this.bpP.bLe("send another MSG_CHECK_CAMERA_IN_FOREGROUND");
                sendEmptyMessageDelayed(3, (long) (this.bpP.boD ? 30000 : 120000));
                return;
            default:
                return;
        }
    }
}
