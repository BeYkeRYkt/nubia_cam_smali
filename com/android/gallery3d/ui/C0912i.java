package com.android.gallery3d.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.widget.ImageView;
import com.p010a.C0090a;

public class C0912i extends ImageView {
    private Bitmap aqS;
    private RectF aqT;

    public C0912i(Context context) {
        super(context);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        C0090a.m0d("GalleryImageView", "canvas " + canvas.getWidth() + " " + canvas.getHeight() + " view " + getWidth() + " " + getHeight() + " Scale " + getScaleX() + " " + getScaleY());
        if (this.aqT != null) {
            C0090a.m0d("GalleryImageView", "mZoomRect " + this.aqT.left + " " + this.aqT.top + " " + this.aqT.right + " " + this.aqT.bottom);
        }
        float scaleX = getScaleX();
        float scaleY = getScaleY();
        if (this.aqS != null && scaleX > 1.0f && scaleY > 1.0f) {
            RectF rectF = new RectF(this.aqT.left / scaleX, this.aqT.top / scaleY, this.aqT.right / scaleX, this.aqT.bottom / scaleY);
            canvas.drawBitmap(this.aqS, null, this.aqT, null);
        }
    }

    public void aEU(Bitmap bitmap, RectF rectF) {
        this.aqS = bitmap;
        this.aqT = rectF;
        postInvalidate();
    }
}
