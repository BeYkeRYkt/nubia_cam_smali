package com.android.objectclear;

import com.p010a.C0090a;

final class C1037o implements C1024b {
    final /* synthetic */ C1031i aKp;

    C1037o(C1031i c1031i) {
        this.aKp = c1031i;
    }

    public void aZK() {
        C0090a.m1e("NubiaObjectClearFragment", "onDataFinish");
        this.aKp.aKg.sendEmptyMessage(3);
    }

    public void aZM(int i) {
        C0090a.m1e("NubiaObjectClearFragment", "onGetData");
        this.aKp.aKg.obtainMessage(4, i, 0).sendToTarget();
    }

    public void aZL() {
        C0090a.m1e("NubiaObjectClearFragment", "onDataStart");
        this.aKp.aKg.sendEmptyMessage(5);
    }
}
