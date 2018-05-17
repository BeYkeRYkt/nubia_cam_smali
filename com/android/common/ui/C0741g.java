package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class C0741g extends ImageView {
    private final float jD;
    private boolean jE;

    public C0741g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.jD = 0.4f;
        this.jE = true;
    }

    public C0741g(Context context) {
        this(context, null);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.jE) {
            return;
        }
        if (z) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.4f);
        }
    }
}
