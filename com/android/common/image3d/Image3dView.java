package com.android.common.image3d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ImageView;

public class Image3dView extends ImageView {
    private Rect EP = new Rect();
    private Bitmap EQ = null;
    private Rect ER = new Rect();

    public Image3dView(Context context) {
        super(context);
        CZ(context);
    }

    public Image3dView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        CZ(context);
    }

    public Image3dView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        CZ(context);
    }

    private void CZ(Context context) {
    }

    public void Da(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int width2 = getWidth();
            int height2 = getHeight();
            this.ER.left = 0;
            this.ER.top = 0;
            this.ER.right = width;
            this.ER.bottom = height;
            float min = Math.min(((float) width2) / ((float) width), ((float) height2) / ((float) height));
            this.EP.right = (int) (((float) width) * min);
            this.EP.bottom = (int) (((float) height) * min);
            width = (int) (((float) width) * min);
            height = (int) (((float) height) * min);
            this.EP.left = (width2 - width) / 2;
            this.EP.right = (height2 - height) / 2;
            this.EP.right = width + this.EP.left;
            this.EP.bottom = height + this.EP.top;
            this.EQ = bitmap;
            invalidate();
        }
    }

    protected void onDraw(Canvas canvas) {
        if (this.EQ != null) {
            canvas.drawBitmap(this.EQ, this.ER, this.EP, null);
        }
    }
}
