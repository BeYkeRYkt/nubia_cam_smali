package com.android.common.appService;

public class C0306I {
    private C0329e Ts = null;
    private PhysicalShutterButtonManager$ButtonState Tt = PhysicalShutterButtonManager$ButtonState.HALFPRESSUP;

    public C0306I(C0329e c0329e) {
        this.Ts = c0329e;
    }

    private void abo() {
        abq(PhysicalShutterButtonManager$ButtonState.HALFPRESSDOWN);
        abn().Tc().MI();
    }

    private void abp() {
        abq(PhysicalShutterButtonManager$ButtonState.HALFPRESSUP);
    }

    private void abq(PhysicalShutterButtonManager$ButtonState physicalShutterButtonManager$ButtonState) {
        this.Tt = physicalShutterButtonManager$ButtonState;
    }

    public PhysicalShutterButtonManager$ButtonState abl() {
        return this.Tt;
    }

    private C0329e abn() {
        return this.Ts;
    }

    public void abm(boolean z) {
        if (z && !abn().VL()) {
            return;
        }
        if (!z || abn().Vz() || this.Ts.Tl()) {
            if (z) {
                abo();
            } else {
                abp();
            }
        }
    }
}
