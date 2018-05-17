package com.android.video;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class VideoSnapButton extends RelativeLayout {
    private C1149b aPf;

    public VideoSnapButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void bfv(C1149b c1149b) {
        this.aPf = c1149b;
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (this.aPf != null) {
            this.aPf.bfw();
        }
        return performClick;
    }
}
