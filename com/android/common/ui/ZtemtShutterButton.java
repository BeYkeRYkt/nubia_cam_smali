package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public class ZtemtShutterButton extends LinearLayout {
    private boolean sl = false;
    private C0366P sm = null;
    private C0739O sn = new C0739O();
    private RotateImageView so = null;
    private boolean sp = false;
    private int sq;
    private RotateImageView sr = null;
    private RelativeLayout ss = null;
    private RotateImageView st = null;

    public ZtemtShutterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void pZ(C0366P c0366p) {
        this.sm = c0366p;
        setOnLongClickListener(this.sn);
        setLongClickable(false);
        setClickable(true);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        boolean isPressed = isPressed();
        if (isPressed != this.sp) {
            if (isPressed) {
                qb(isPressed);
            } else {
                post(new bc(this, isPressed));
            }
            this.sp = isPressed;
        }
    }

    private void qb(boolean z) {
        if (this.sm != null) {
            this.sm.qf(z);
        }
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (this.sm != null && isClickable()) {
            this.sm.qe();
        }
        return performClick;
    }

    public boolean qa(boolean z) {
        qb(z);
        return true;
    }

    public void setOrientation(int i) {
        if (this.sq != i) {
            this.sq = i;
            if (this.sr != null) {
                this.sr.fc(this.sq, true);
            }
            if (this.so != null) {
                this.so.fc(this.sq, true);
            }
        }
    }
}
