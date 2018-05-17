package com.android.common.p014n;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.android.camera.R;

final class C0650M implements OnTouchListener {
    final /* synthetic */ C0672n aej;

    C0650M(C0672n c0672n) {
        this.aej = c0672n;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.aej.adb.setTextColor(this.aej.getActivity().getResources().getColor(R.color.alpha30_black));
                this.aej.ada.setAlpha(0.3f);
                break;
            case 1:
                this.aej.adb.setTextColor(this.aej.getActivity().getResources().getColor(R.color.alpha93_black));
                this.aej.ada.setAlpha(1.0f);
                break;
        }
        return false;
    }
}
