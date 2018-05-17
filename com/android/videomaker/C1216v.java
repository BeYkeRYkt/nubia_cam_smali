package com.android.videomaker;

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import com.android.camera.R;
import com.android.videomaker.service.MakerService;

final class C1216v extends Handler {
    final /* synthetic */ C1193f aAR;

    C1216v(C1193f c1193f) {
        this.aAR = c1193f;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 257:
                this.aAR.aOC();
                return;
            case 258:
                this.aAR.azt = ProgressDialog.show(this.aAR.azb, null, this.aAR.ayT.getResources().getString(R.string.loading_images), true, false);
                break;
            case 259:
                break;
            case 260:
                if (this.aAR.azt != null) {
                    this.aAR.azt.dismiss();
                }
                this.aAR.azl.sendEmptyMessage(257);
                this.aAR.aOE();
                return;
            case 261:
                this.aAR.azs.aMD();
                return;
            case 262:
                this.aAR.aOt(message.arg1);
                return;
            case 263:
                MakerService.aLs(this.aAR.azb, this.aAR.azB, this.aAR.azv, this.aAR.azu, this.aAR.azk);
                return;
            default:
                return;
        }
        this.aAR.aOq();
        this.aAR.aOp();
    }
}
