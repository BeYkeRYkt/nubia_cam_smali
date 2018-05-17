package com.android.common;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

class C0695p extends Handler {
    final /* synthetic */ C0636m aia;

    private C0695p(C0636m c0636m) {
        this.aia = c0636m;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (this.aia.ahP) {
                    if (this.aia.ahS != null) {
                        this.aia.ahS.akB(0);
                        break;
                    }
                }
                C0090a.bvo("Intervalometer", "when interval is not on, not call interval start");
                return;
                break;
            case 1:
                if (this.aia.ahP) {
                    this.aia.ahX = System.currentTimeMillis() - C0636m.ahZ;
                    if (this.aia.ahS != null) {
                        this.aia.ahS.akC(this.aia.aqz(), this.aia.ahX, this.aia.ahW);
                    }
                    if (!this.aia.aqu()) {
                        if (this.aia.ahN == 0) {
                            if (this.aia.ahN == 0) {
                                this.aia.ahM.sendEmptyMessage(1);
                                break;
                            }
                        }
                        this.aia.ahM.sendEmptyMessageDelayed(1, 1000);
                        break;
                    }
                    this.aia.run();
                    break;
                }
                C0090a.bvo("Intervalometer", "when interval is not on, not call interval run");
                return;
                break;
            case 2:
                if (this.aia.ahP) {
                    if (this.aia.ahS != null) {
                        this.aia.ahS.onFinish();
                    }
                    this.aia.ahY = 0;
                    if (this.aia.ahN == 0 || message.arg1 == 1) {
                        this.aia.ahM.sendEmptyMessage(1);
                        break;
                    }
                }
                C0090a.bvo("Intervalometer", "when interval is not on, not call interval finish");
                return;
        }
    }
}
