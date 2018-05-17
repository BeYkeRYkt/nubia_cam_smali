package com.android.common;

final class ad implements Runnable {
    final /* synthetic */ ActivityBase akV;

    ad(ActivityBase activityBase) {
        this.akV = activityBase;
    }

    public void run() {
        this.akV.aju = true;
        this.akV.aso();
    }
}
