package com.android.intervalometer;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.p010a.C0090a;
import java.io.File;

class C0937i implements C0931c {
    final /* synthetic */ C0936h aOW;

    private C0937i(C0936h c0936h) {
        this.aOW = c0936h;
    }

    public void beD() {
        if (this.aOW.aOJ == 0) {
            this.aOW.aOJ = 1000;
        } else {
            C0936h c0936h = this.aOW;
            c0936h.aOJ = c0936h.aOJ * 2;
        }
        C0090a.m0d("IntervalometerFragment", "onHalve  mIntervalTime: " + this.aOW.aOJ);
        this.aOW.alL();
    }

    public void beF(String str) {
        C0090a.m0d("IntervalometerFragment", "onSaved " + str);
        if (this.aOW.aOQ - this.aOW.aOP > 2000) {
            this.aOW.beW(str);
            return;
        }
        C0090a.m1e("IntervalometerFragment", "record is too short. delete this file");
        if (this.aOW.aOO == null) {
            this.aOW.aOO = Toast.makeText(this.aOW.getActivity(), R.string.record_fail, 0);
        }
        this.aOW.aOO.show();
        new File(str).delete();
    }

    public void beG() {
        C0090a.m0d("IntervalometerFragment", "onStart");
        this.aOW.aOL = false;
    }

    public void beE() {
        C0090a.m0d("IntervalometerFragment", "onIdle");
        this.aOW.aOJ = 500;
        this.aOW.aOL = true;
        this.aOW.alF();
        if (this.aOW.aOI != null) {
            this.aOW.aOI.lC();
            this.aOW.aOI.lB(Function.WAIT);
            this.aOW.aOI.setVisibility(8);
            this.aOW.alr();
        }
    }
}
