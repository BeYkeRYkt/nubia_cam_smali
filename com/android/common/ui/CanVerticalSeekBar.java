package com.android.common.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import com.android.camera.C0172c;

public class CanVerticalSeekBar extends SeekBar {
    private boolean ms = false;

    public CanVerticalSeekBar(Context context) {
        super(context);
    }

    public CanVerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        jV(context, attributeSet);
    }

    public CanVerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        jV(context, attributeSet);
    }

    private void jV(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHM);
        this.ms = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.ms) {
            super.onSizeChanged(i2, i, i4, i3);
        } else {
            super.onSizeChanged(i, i2, i3, i4);
        }
    }

    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.ms) {
            setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    protected synchronized void onDraw(Canvas canvas) {
        if (this.ms) {
            canvas.rotate(-90.0f);
            canvas.translate((float) (-getHeight()), 0.0f);
        }
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.ms) {
            return super.onTouchEvent(motionEvent);
        }
        if (!isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
            case 1:
            case 2:
                setProgress(getMax() - ((int) ((((float) getMax()) * motionEvent.getY()) / ((float) getHeight()))));
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                break;
        }
        return true;
    }
}
