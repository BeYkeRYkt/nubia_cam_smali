package com.android.trajectory;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Message;
import com.android.camera.Trajectory.NubiaTrajectory;
import com.android.common.C0616j;
import com.p010a.C0090a;

class C1129d extends Handler {
    final /* synthetic */ C1127b bbI;

    private C1129d(C1127b c1127b) {
        this.bbI = c1127b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (this.bbI.bbt != null) {
                    this.bbI.bbt.notifyDataSetChanged();
                }
                if (this.bbI.baS != null && this.bbI.baS.length == 10) {
                    this.bbI.bry();
                    this.bbI.bbB.setEnabled(true);
                    break;
                }
            case 1:
                this.bbI.brF(this.bbI.bbw);
                this.bbI.bry();
                this.bbI.brv();
                this.bbI.bbB.setEnabled(true);
                break;
            case 2:
                this.bbI.bbu = 7;
                this.bbI.brT(this.bbI.bbu);
                Bitmap bitmap = (Bitmap) message.obj;
                int i = message.arg1;
                if (this.bbI.bbi == null) {
                    this.bbI.bbi = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Config.ARGB_8888);
                }
                NubiaTrajectory.RotateBitmapRGBA8888(bitmap, this.bbI.bbi, bitmap.getWidth(), bitmap.getHeight(), this.bbI.bru());
                this.bbI.bbs.setVisibility(0);
                this.bbI.bbs.setImageBitmap(this.bbI.bbi);
                if (bitmap != null) {
                    bitmap.recycle();
                }
                if (i != 0) {
                    C0090a.m1e("TrajectoryFragment", "TRAJECTORY_COMPOSITION_CONFIRM_FINISH ret = " + i);
                    this.bbI.brQ();
                }
                this.bbI.bry();
                break;
            case 3:
                if (!this.bbI.adC) {
                    C0616j.apa(this.bbI.getActivity(), "trajectory_1", "TrajectoryFragment");
                    if (this.bbI.adA == null || !this.bbI.adA.VC()) {
                        this.bbI.adA.Tz().sendEmptyMessage(19);
                        this.bbI.brK(this.bbI.bbi);
                        this.bbI.brq();
                        this.bbI.brG();
                        this.bbI.brJ();
                        this.bbI.brR();
                        this.bbI.bbc = false;
                        break;
                    }
                    this.bbI.brM(this.bbI.bbi);
                    this.bbI.brq();
                    this.bbI.bbz.aWL(false);
                    this.bbI.bbc = false;
                    return;
                }
                break;
            case 4:
                this.bbI.brJ();
                break;
            case 5:
                this.bbI.bbd = C1127b.baA;
                this.bbI.bba = true;
                this.bbI.brn(this.bbI.bbd);
                break;
        }
    }
}
