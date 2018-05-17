package com.android.common.appService;

public class C0333h {
    private C0334i QD = null;

    public void Yf(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
        if (cameraMember == CameraMember.NONE) {
            Yh(true, 100);
        } else if (!Yg(cameraMember2)) {
            Yh(true, 0);
        }
    }

    public void Ye(C0341p c0341p) {
        if (c0341p != null && this.QD != null && this.QD.QF) {
            c0341p.YM(this.QD.QE);
            this.QD.QF = false;
        }
    }

    private boolean Yg(CameraMember cameraMember) {
        if (cameraMember == CameraMember.NORMAL || cameraMember == CameraMember.PRO || cameraMember == CameraMember.PRETTYCAMERA || cameraMember == CameraMember.VIDEO_RECORD) {
            return true;
        }
        return false;
    }

    private void Yh(boolean z, long j) {
        if (this.QD == null) {
            this.QD = new C0334i(this);
        }
        this.QD.QF = z;
        this.QD.QE = j;
    }
}
