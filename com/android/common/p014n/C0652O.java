package com.android.common.p014n;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.p010a.C0090a;

final class C0652O implements OnTouchListener {
    final /* synthetic */ C0672n ael;

    C0652O(C0672n c0672n) {
        this.ael = c0672n;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            C0090a.bvo(C0672n.TAG, "mExpandDialogLayout onTouch");
            this.ael.akO();
        }
        return true;
    }
}
