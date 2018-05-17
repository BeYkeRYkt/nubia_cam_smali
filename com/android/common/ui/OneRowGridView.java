package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class OneRowGridView extends GridView {
    private int jw;

    public OneRowGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setColumnWidth(int i) {
        super.setColumnWidth(i);
        if (this.jw != i) {
            this.jw = i;
            requestLayout();
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 0;
        if (this.jw != 0) {
            if (getAdapter() != null) {
                i3 = getAdapter().getCount();
            }
            i = MeasureSpec.makeMeasureSpec(((((i3 - 1) * getHorizontalSpacing()) + (this.jw * i3)) + getPaddingStart()) + getPaddingEnd(), 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
