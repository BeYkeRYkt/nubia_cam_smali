package com.android.electronicfno;

import com.android.common.ActivityBase;
import com.android.common.appService.C0105L;

public class ElectronicFnoActivity extends ActivityBase {
    protected C0105L atd() {
        if (this.aiw == null) {
            this.aiw = new C0838i();
        }
        return this.aiw;
    }

    public void onBackPressed() {
        if (!this.aiG.SU().RR(this.aiG)) {
            super.onBackPressed();
        }
    }
}
