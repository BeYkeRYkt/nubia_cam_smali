package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.p010a.C0090a;

public class InterruptedRelativeLayout extends RelativeLayout {
    private C0647s oe = null;

    public InterruptedRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void lk(C0647s c0647s) {
        this.oe = c0647s;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.oe == null || !this.oe.ll()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.bvo("InterruptedRelativeLayout", "interrpted");
        return true;
    }
}
