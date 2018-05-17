package com.android.normal;

import android.os.Handler;
import android.os.Message;
import com.android.common.ui.MultiFunctionImageView.Function;

public class C1006c extends Handler {
    final /* synthetic */ C1005b aCs;

    public C1006c(C1005b c1005b) {
        this.aCs = c1005b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.aCs.aCp.setVisibility(0);
                this.aCs.aCp.lw(Function.PROGRESS);
                this.aCs.aCp.lx(((Integer) message.obj).intValue(), true);
                return;
            default:
                return;
        }
    }
}
