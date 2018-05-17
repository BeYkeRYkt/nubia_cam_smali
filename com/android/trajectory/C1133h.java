package com.android.trajectory;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

class C1133h implements OnClickListener {
    final /* synthetic */ C1127b bbM;

    private C1133h(C1127b c1127b) {
        this.bbM = c1127b;
    }

    public void onClick(View view) {
        if (this.bbM.bbE.getVisibility() == 0) {
            C0090a.m1e("TrajectoryFragment", "can't RestartButtonClickListener ,because is making");
        } else {
            this.bbM.bro(false);
        }
    }
}
