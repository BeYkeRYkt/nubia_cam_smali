package com.android.trajectory;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

class C1132g implements OnClickListener {
    final /* synthetic */ C1127b bbL;

    private C1132g(C1127b c1127b) {
        this.bbL = c1127b;
    }

    public void onClick(View view) {
        if (this.bbL.bbE.getVisibility() == 0) {
            C0090a.m1e("TrajectoryFragment", "can't SaveButtonClickListener ,because is making");
        } else if (this.bbL.bbc) {
            C0090a.m1e("TrajectoryFragment", "can't ChangeButtonClickListener ,because is saving");
        } else if (this.bbL.bba) {
            this.bbL.bbc = true;
            this.bbL.bba = false;
            this.bbL.bbz.aWM();
            this.bbL.adA.Wb(3);
        }
    }
}
