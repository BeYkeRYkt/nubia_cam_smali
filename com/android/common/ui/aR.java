package com.android.common.ui;

final class aR implements Runnable {
    final /* synthetic */ BigApertureSettingUI ye;

    aR(BigApertureSettingUI bigApertureSettingUI) {
        this.ye = bigApertureSettingUI;
    }

    public void run() {
        if (!this.ye.pJ) {
            int[] nt = this.ye.nd(this.ye.qf[0], this.ye.qf[1]);
            if (nt != null && this.ye.qf[0] != 0.0f && this.ye.qf[1] != 0.0f) {
                this.ye.pF = false;
                this.ye.nl(nt[0], nt[1]);
                this.ye.qe[0] = nt[0];
                this.ye.qe[1] = nt[1];
                this.ye.pU = true;
                this.ye.ni();
            }
        }
    }
}
