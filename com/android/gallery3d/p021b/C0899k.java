package com.android.gallery3d.p021b;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C0899k implements OnClickListener {
    final /* synthetic */ C0889a asg;

    C0899k(C0889a c0889a) {
        this.asg = c0889a;
    }

    public void onClick(View view) {
        if (this.asg.arJ.aCf()) {
            C0090a.m0d("GalleryFragment", "RemoveAnimation is playing");
            return;
        }
        this.asg.arF.aAP();
        this.asg.aFi();
        if (this.asg.arJ.aCc() || this.asg.arF.aAG() == 1) {
            this.asg.arJ.aBY().aDl();
        }
    }
}
