package com.android.common.appService;

final class at implements C0320Z {
    final /* synthetic */ C0303E Vc;

    at(C0303E c0303e) {
        this.Vc = c0303e;
    }

    public void adb(int i) {
        this.Vc.aaG();
        this.Vc.Td.gv(i);
        this.Vc.SW.setText(this.Vc.aaB(i));
        this.Vc.SU.removeMessages(1);
        this.Vc.SU.sendEmptyMessageDelayed(1, 5000);
    }

    public void adc() {
        this.Vc.SU.sendEmptyMessage(2);
    }
}
