package com.android.common.setting;

final class C0717u implements Runnable {
    final /* synthetic */ C0160p AA;

    C0717u(C0160p c0160p) {
        this.AA = c0160p;
    }

    public void run() {
        for (C0115d c0115d : this.AA.Al) {
            if (c0115d != null) {
                c0115d.tX(this.AA.Ak.An, this.AA.Ak.Ao);
            }
        }
    }
}
