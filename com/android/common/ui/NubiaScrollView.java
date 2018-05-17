package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

public class NubiaScrollView extends ScrollView {
    private af uJ = null;

    public NubiaScrollView(Context context) {
        super(context);
    }

    public NubiaScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NubiaScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void rO(af afVar) {
        this.uJ = afVar;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.uJ != null) {
            this.uJ.rP(i, i2, i3, i4);
        }
    }
}
