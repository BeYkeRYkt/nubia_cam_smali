package com.android.objectclear;

import android.hardware.Camera.PreviewCallback;
import com.p010a.C0090a;

final class C1036n implements Runnable {
    final /* synthetic */ C1023a aKo;

    C1036n(C1023a c1023a) {
        this.aKo = c1023a;
    }

    public void run() {
        if (!this.aKo.aJz && this.aKo.aJy.Tr() != null) {
            PreviewCallback c1026d = new C1026d(this.aKo);
            this.aKo.aJy.Ts().abE(c1026d, this.aKo.aJy.SQ());
            if (this.aKo.aJA != null) {
                this.aKo.aJA.aZL();
            }
            while (this.aKo.aJw < 5) {
                C0090a.bvo("NubiaObjectClearDataProvider", "iCoutn = " + this.aKo.aJw);
                this.aKo.aJy.Tr().IK(new byte[(((this.aKo.width * this.aKo.height) * 3) / 2)]);
                try {
                    Thread.sleep(500);
                } catch (Throwable e) {
                    C0090a.bvi("NubiaObjectClearDataProvider", "synthetize", e);
                }
                if (!this.aKo.aJz) {
                    C1023a c1023a = this.aKo;
                    c1023a.aJw = c1023a.aJw + 1;
                } else {
                    return;
                }
            }
            if (!this.aKo.aJz) {
                this.aKo.aJw = 0;
                this.aKo.aJy.Ts().abD(c1026d);
            }
        }
    }
}
