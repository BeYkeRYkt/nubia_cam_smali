package com.android.camera.network;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.ProgressBar;

public class ProgressWebView extends WebView {
    private ProgressBar aEK;

    public ProgressWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aEK = new ProgressBar(context, null, 16842872);
        this.aEK.setLayoutParams(new LayoutParams(-1, 3, 0, 0));
        addView(this.aEK);
        setWebChromeClient(new C0211a(this));
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) this.aEK.getLayoutParams();
        layoutParams.x = i;
        layoutParams.y = i2;
        this.aEK.setLayoutParams(layoutParams);
        super.onScrollChanged(i, i2, i3, i4);
    }
}
