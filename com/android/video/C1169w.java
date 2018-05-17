package com.android.video;

import android.view.View;
import android.view.View.OnClickListener;

final class C1169w implements OnClickListener {
    final /* synthetic */ C1161n aRA;

    C1169w(C1161n c1161n) {
        this.aRA = c1161n;
    }

    public void onClick(View view) {
        this.aRA.getActivity().finish();
    }
}
