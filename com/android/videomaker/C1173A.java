package com.android.videomaker;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C1173A implements OnClickListener {
    final /* synthetic */ C1201o aAX;

    C1173A(C1201o c1201o) {
        this.aAX = c1201o;
    }

    public void onClick(View view) {
        C0090a.m1e("VideoMakerFragment", "mVideoMakerCancelButton click, " + this.aAX.aQb());
        this.aAX.aPX();
    }
}
