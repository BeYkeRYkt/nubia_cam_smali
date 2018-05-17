package com.android.electronicfno;

import android.os.Handler;
import android.os.Message;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.umeng.analytics.ReportPolicy;

public class C0835f extends Handler {
    final /* synthetic */ C0833d aXK;

    public C0835f(C0833d c0833d) {
        this.aXK = c0833d;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 3:
                if (this.aXK.aXF != null) {
                    this.aXK.aXF.setEnabled(true);
                    return;
                }
                return;
            case 5:
                this.aXK.aXq.lw(Function.WAIT);
                return;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                this.aXK.boc();
                return;
            case 74:
                this.aXK.bnR();
                return;
            default:
                return;
        }
    }
}
