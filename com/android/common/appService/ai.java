package com.android.common.appService;

import com.android.common.camerastate.DeviceState;

final class ai implements Runnable {
    final /* synthetic */ C0332g UP;

    ai(C0332g c0332g) {
        this.UP = c0332g;
    }

    public void run() {
        if (!(this.UP.Xv() == DeviceState.NOT_INITIALIZED || this.UP.Qw.Tc() == null || this.UP.Qw.Td() == null || this.UP.Qw.Te() == null)) {
            this.UP.Qw.TE().Lx();
            this.UP.Qw.Tc().MJ();
            this.UP.Qw.Td().Oi();
            this.UP.Qw.Te().Pe();
            this.UP.Qw.Wf();
        }
    }
}
