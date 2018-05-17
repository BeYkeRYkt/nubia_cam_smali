package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class RotateLayout extends ViewGroup implements C0474A {
    protected View wO;
    private int wP;

    public RotateLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackgroundResource(17170445);
    }

    protected void onFinishInflate() {
        this.wO = getChildAt(0);
        this.wO.setPivotX(0.0f);
        this.wO.setPivotY(0.0f);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        switch (this.wP) {
            case 0:
            case 180:
                this.wO.layout(0, 0, i5, i6);
                return;
            case 90:
            case 270:
                this.wO.layout(0, 0, i6, i5);
                return;
            default:
                return;
        }
    }

    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int i3 = 0;
        switch (this.wP) {
            case 0:
            case 180:
                measureChild(this.wO, i, i2);
                measuredWidth = this.wO.getMeasuredWidth();
                i3 = this.wO.getMeasuredHeight();
                break;
            case 90:
            case 270:
                measureChild(this.wO, i2, i);
                measuredWidth = this.wO.getMeasuredHeight();
                i3 = this.wO.getMeasuredWidth();
                break;
            default:
                measuredWidth = 0;
                break;
        }
        setMeasuredDimension(measuredWidth, i3);
        switch (this.wP) {
            case 0:
                this.wO.setTranslationX(0.0f);
                this.wO.setTranslationY(0.0f);
                break;
            case 90:
                this.wO.setTranslationX(0.0f);
                this.wO.setTranslationY((float) i3);
                break;
            case 180:
                this.wO.setTranslationX((float) measuredWidth);
                this.wO.setTranslationY((float) i3);
                break;
            case 270:
                this.wO.setTranslationX((float) measuredWidth);
                this.wO.setTranslationY(0.0f);
                break;
        }
        this.wO.setRotation((float) (-this.wP));
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void fc(int i, boolean z) {
        int i2 = i % 360;
        if (this.wP != i2) {
            this.wP = i2;
            requestLayout();
        }
    }
}
