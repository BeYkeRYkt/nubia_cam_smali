package com.android.pretty;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.widget.RelativeLayout;

public class LargeMultipleTouchableRelativeLayout extends RelativeLayout {
    private C1080k aue;

    public LargeMultipleTouchableRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        aHR(context);
    }

    private void aHR(Context context) {
        this.aue = new C1080k(this, this);
    }

    public void setTouchDelegate(TouchDelegate touchDelegate) {
        this.aue.aHS(touchDelegate);
        super.setTouchDelegate(this.aue);
    }
}
