package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class RotateTextView extends TextView implements C0474A {
    private C0756h sP = new C0756h();

    public RotateTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RotateTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RotateTextView(Context context) {
        super(context);
    }

    public void fc(int i, boolean z) {
        this.sP.ip(i, z);
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (width != 0 && height != 0) {
            if (this.sP.in()) {
                invalidate();
            }
            width = getPaddingStart();
            height = getPaddingTop();
            int paddingEnd = getPaddingEnd();
            paddingEnd = (getWidth() - width) - paddingEnd;
            int height2 = (getHeight() - height) - getPaddingBottom();
            canvas.translate(((float) width) + (((float) paddingEnd) / 2.0f), ((float) height) + (((float) height2) / 2.0f));
            canvas.rotate((float) (-this.sP.io()));
            canvas.translate(((float) (-paddingEnd)) / 2.0f, ((float) (-height2)) / 2.0f);
            super.onDraw(canvas);
        }
    }
}
