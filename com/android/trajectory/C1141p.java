package com.android.trajectory;

import com.android.camera.Trajectory.NubiaTrajectory;
import com.p010a.C0090a;

final class C1141p extends Thread {
    final /* synthetic */ C1127b bbU;

    C1141p(C1127b c1127b) {
        this.bbU = c1127b;
    }

    public void run() {
        if (this.bbU.bbz == null || !this.bbU.bbz.aWR()) {
            this.bbU.bbb = true;
            int PreRegister = NubiaTrajectory.PreRegister();
            int ComposePrepare = NubiaTrajectory.ComposePrepare();
            if (PreRegister == -1 || ComposePrepare == -1) {
                C0090a.m1e("TrajectoryFragment", "PreRegister failed: ret = " + PreRegister + "; ret2 = " + ComposePrepare);
                if (!this.bbU.baY) {
                    this.bbU.baT.sendEmptyMessage(4);
                }
                this.bbU.bbb = false;
                return;
            }
            if (!this.bbU.baY) {
                this.bbU.baT.sendEmptyMessage(5);
            }
            C0090a.bvo("TrajectoryFragment", "PreRegister finish. ret = " + PreRegister);
            this.bbU.bbb = false;
        }
    }
}
