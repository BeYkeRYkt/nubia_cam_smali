package com.android.camera;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C0214q extends Handler {
    final /* synthetic */ C0199e aIX;

    C0214q(C0199e c0199e) {
        this.aIX = c0199e;
    }

    public void handleMessage(Message message) {
        C0090a.bvo("MemberScrollerManager", "msg: " + message.what);
        switch (message.what) {
            case 1:
                this.aIX.aIm.m42t();
                return;
            case 2:
                this.aIX.aXX(false);
                this.aIX.aIm.m40r(false);
                this.aIX.aIg.sendEmptyMessageDelayed(1, 250);
                return;
            case 3:
                this.aIX.aIb.aVa();
                return;
            case 4:
                C0090a.bvo("MemberScrollerManager", "reset disableMemberScrollerForAWhile");
                this.aIX.aIf = false;
                return;
            default:
                return;
        }
    }
}
