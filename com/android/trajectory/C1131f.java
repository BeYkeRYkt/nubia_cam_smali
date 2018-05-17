package com.android.trajectory;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

class C1131f implements OnClickListener {
    final /* synthetic */ C1127b bbK;

    private C1131f(C1127b c1127b) {
        this.bbK = c1127b;
    }

    public void onClick(View view) {
        if (this.bbK.bbE.getVisibility() == 0) {
            C0090a.m1e("TrajectoryFragment", "can't ChangeButtonClickListener ,because is making");
        } else if (this.bbK.bbc) {
            C0090a.m1e("TrajectoryFragment", "can't ChangeButtonClickListener ,because is saving");
        } else if (this.bbK.bbu != 7) {
            C0090a.m1e("TrajectoryFragment", "can't ChangeButtonClickListener ,because is not AFTER_PLAY");
        } else {
            if (this.bbK.bbd == C1127b.baA) {
                this.bbK.bbd = C1127b.baz;
            } else if (this.bbK.bbd == C1127b.baz) {
                this.bbK.bbd = C1127b.bay;
            } else {
                this.bbK.bbd = C1127b.baA;
            }
            this.bbK.brn(this.bbK.bbd);
        }
    }
}
