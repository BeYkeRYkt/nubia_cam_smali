package com.android.gallery3d.p038a;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;
import com.android.common.C0259A;

final class C0888t implements OnClickListener {
    final /* synthetic */ C0880h apT;
    final /* synthetic */ Activity apU;

    C0888t(C0880h c0880h, Activity activity) {
        this.apT = c0880h;
        this.apU = activity;
    }

    public void onClick(View view) {
        C0259A.avE(this.apU, R.string.can_not_play_in_visitor_mode);
    }
}
