package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class OpaqueTextView extends TextView {
    public OpaqueTextView(Context context) {
        super(context);
    }

    public OpaqueTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OpaqueTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public OpaqueTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public boolean isOpaque() {
        return true;
    }

    protected void onDraw(Canvas canvas) {
        canvas.drawARGB(255, 0, 0, 0);
        super.onDraw(canvas);
    }
}
