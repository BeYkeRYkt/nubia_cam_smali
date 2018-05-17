package com.android.common.ui;

import android.content.Context;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.TextView;

public class MarqueeTextView extends TextView {
    public MarqueeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        sR();
    }

    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        sR();
    }

    public MarqueeTextView(Context context) {
        super(context);
        sR();
    }

    private void sR() {
        setFocusable(true);
        setFocusableInTouchMode(true);
        setSingleLine();
        setEllipsize(TruncateAt.MARQUEE);
        setMarqueeRepeatLimit(-1);
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            super.onWindowFocusChanged(z);
        }
    }

    public boolean isFocused() {
        return true;
    }
}
