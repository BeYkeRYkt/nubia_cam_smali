package com.android.p017c;

import android.graphics.Rect;
import android.hardware.Camera.Area;
import android.os.Handler;
import android.os.Message;
import java.util.List;

class C0132e extends Handler {
    final /* synthetic */ C0131d aWD;

    private C0132e(C0131d c0131d) {
        this.aWD = c0131d;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1234:
                if (!this.aWD.adC && !this.aWD.bmc()) {
                    List Mj = this.aWD.adA.Tc().Mj();
                    if (Mj != null) {
                        Rect rect = ((Area) Mj.get(0)).rect;
                        if (rect.left == this.aWD.aWj.left && rect.top == this.aWD.aWj.top && rect.right == this.aWD.aWj.right) {
                            if (rect.bottom == this.aWD.aWj.bottom) {
                                return;
                            }
                        }
                        this.aWD.aWj.set(rect);
                        this.aWD.bmn((((1000.0f - rect.exactCenterY()) / 2000.0f) * ((float) this.aWD.aWs.width())) + ((float) this.aWD.aWs.left), (((rect.exactCenterX() + 1000.0f) / 2000.0f) * ((float) this.aWD.aWs.height())) + ((float) this.aWD.aWs.top));
                        return;
                    }
                    this.aWD.aWq = (float) (this.aWD.aWs.width() / 2);
                    this.aWD.aWr = (float) (this.aWD.aWs.height() / 2);
                    this.aWD.blX((int) this.aWD.aWq, (int) this.aWD.aWr);
                    this.aWD.aWf.blQ(this.aWD.aWq, ((float) this.aWD.aWs.height()) - this.aWD.aWr);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
