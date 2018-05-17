package com.android.trajectory;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Message;
import com.android.camera.Trajectory.NubiaTrajectory;

final class C1140o extends Thread {
    final /* synthetic */ C1127b bbS;
    final /* synthetic */ int[] bbT;

    C1140o(C1127b c1127b, int[] iArr) {
        this.bbS = c1127b;
        this.bbT = iArr;
    }

    public void run() {
        Bitmap createBitmap = Bitmap.createBitmap(this.bbS.bbF, this.bbS.baU, Config.ARGB_8888);
        int Compose = NubiaTrajectory.Compose(this.bbT, createBitmap);
        this.bbS.bbz.aWL(false);
        Message message = new Message();
        message.what = 2;
        message.arg1 = Compose;
        message.obj = createBitmap;
        this.bbS.baT.sendMessage(message);
    }
}
