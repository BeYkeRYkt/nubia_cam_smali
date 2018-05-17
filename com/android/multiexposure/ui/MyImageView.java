package com.android.multiexposure.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.p010a.C0090a;

public class MyImageView extends ImageView {
    public MyImageView(Context context) {
        super(context);
    }

    public MyImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception e) {
            C0090a.bvo("jyzhou", "myimageview ondraw catch an expeption");
        }
    }
}
