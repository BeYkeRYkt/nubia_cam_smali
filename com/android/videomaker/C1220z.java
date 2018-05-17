package com.android.videomaker;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C1220z implements OnClickListener {
    final /* synthetic */ C1201o aAW;

    C1220z(C1201o c1201o) {
        this.aAW = c1201o;
    }

    public void onClick(View view) {
        C0090a.m1e("VideoMakerFragment", "mVideoMakerDoneButton click, " + this.aAW.aQb());
        this.aAW.aPY();
    }
}
