package com.android.common;

import android.os.Message;
import com.p010a.C0090a;

final class C0267I implements Runnable {
    final /* synthetic */ C0375c aky;

    C0267I(C0375c c0375c) {
        this.aky = c0375c;
    }

    public void run() {
        while (this.aky.agZ) {
            try {
                C0375c c0375c;
                this.aky.ahe = System.currentTimeMillis();
                if (this.aky.ahe - this.aky.mStartTime >= ((long) this.aky.ahd) * 1000) {
                    Message message = new Message();
                    message.what = 1;
                    message.arg1 = (int) (((long) this.aky.ahd) * 1000);
                    this.aky.agX.sendMessage(message);
                    c0375c = this.aky;
                    c0375c.ahd = c0375c.ahd + 1;
                }
                if (this.aky.ahe - this.aky.mStartTime >= this.aky.aha) {
                    c0375c = this.aky;
                    c0375c.aha = c0375c.aha + this.aky.agY;
                    this.aky.agX.sendEmptyMessage(2);
                    if (this.aky.agZ) {
                        try {
                            synchronized (this) {
                                wait(this.aky.ahf);
                            }
                        } catch (Throwable e) {
                            C0090a.bvi("MyTimer", "timer wait error", e);
                        }
                    } else {
                        return;
                    }
                }
                continue;
            } catch (Throwable e2) {
                e2.printStackTrace();
                C0090a.bvi("MyTimer", "MyTimer run failed!", e2);
            }
        }
    }
}
