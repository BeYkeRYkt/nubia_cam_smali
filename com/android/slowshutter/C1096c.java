package com.android.slowshutter;

import android.os.Handler;
import android.os.Message;
import com.android.common.ui.MultiFunctionImageView.Function;

public class C1096c extends Handler {
    final /* synthetic */ C1095b bco;

    public C1096c(C1095b c1095b) {
        this.bco = c1095b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.bco.bcj.setVisibility(0);
                this.bco.bcj.lw(Function.PROGRESS);
                this.bco.bcj.lx(((Integer) message.obj).intValue(), true);
                return;
            default:
                return;
        }
    }
}
