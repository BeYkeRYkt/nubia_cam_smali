package com.android.camera.Trajectory;

import com.p010a.C0090a;

final class C0156c extends Thread {
    final /* synthetic */ NubiaTrajectory aHB;

    C0156c(NubiaTrajectory nubiaTrajectory) {
        this.aHB = nubiaTrajectory;
    }

    public void run() {
        try {
            this.aHB.aWW(this.aHB.aHs, this);
        } catch (Exception e) {
            C0090a.m1e("Trajectory", "Exception occured in saveYuvData " + e.getMessage());
        }
    }
}
