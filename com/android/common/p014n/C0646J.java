package com.android.common.p014n;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.p010a.C0090a;

final class C0646J implements OnTouchListener {
    final /* synthetic */ C0672n aeg;

    C0646J(C0672n c0672n) {
        this.aeg = c0672n;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        C0090a.bvo(C0672n.TAG, "MoreSettingLayout onTouch");
        return true;
    }
}
