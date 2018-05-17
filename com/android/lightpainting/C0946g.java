package com.android.lightpainting;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.android.common.C0299a;
import com.android.common.C0616j;

public class C0946g extends Handler {
    final /* synthetic */ C0943d aZt;

    public C0946g(C0943d c0943d) {
        this.aZt = c0943d;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                Bitmap bitmap = (Bitmap) message.obj;
                if (!bitmap.isRecycled()) {
                    bitmap = C0299a.anY(bitmap, C0616j.aoU(this.aZt.adA.SQ()));
                    this.aZt.aYZ.setImageBitmap(bitmap);
                    this.aZt.bpj(this.aZt.aZk, bitmap);
                    break;
                }
                return;
            case 69:
                bqx();
                if (this.aZt.aYt != null) {
                    this.aZt.bpn(this.aZt.aYt);
                }
                this.aZt.releaseBuffer();
                this.aZt.bpm();
                this.aZt.aYw = null;
                this.aZt.bpv();
                this.aZt.mState = 0;
                this.aZt.boU(true);
                break;
            case 74:
                this.aZt.bpk();
                break;
            case 106:
                this.aZt.bpp("off");
                break;
        }
    }

    private void bqx() {
        if (this.aZt.aZk != null) {
            this.aZt.aZk.stop();
        }
    }
}
