package com.android.common.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView.ScaleType;
import com.android.camera.R;

public class RotateImageView extends C0741g implements C0474A {
    private boolean vb = false;
    private C0756h vc = new C0756h();
    private Bitmap vd;
    private Drawable[] ve;

    public RotateImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RotateImageView(Context context) {
        super(context);
    }

    public void fc(int i, boolean z) {
        this.vc.ip(i, z);
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.right - bounds.left;
            int i2 = bounds.bottom - bounds.top;
            if (i != 0 && i2 != 0) {
                if (this.vc.in()) {
                    invalidate();
                }
                int paddingStart = getPaddingStart();
                int paddingTop = getPaddingTop();
                int paddingEnd = getPaddingEnd();
                paddingEnd = (getWidth() - paddingStart) - paddingEnd;
                int height = (getHeight() - paddingTop) - getPaddingBottom();
                int saveCount = canvas.getSaveCount();
                if (getScaleType() == ScaleType.FIT_CENTER && (paddingEnd < i || height < i2)) {
                    float min = Math.min(((float) paddingEnd) / ((float) i), ((float) height) / ((float) i2));
                    canvas.scale(min, min, ((float) paddingEnd) / 2.0f, ((float) height) / 2.0f);
                }
                canvas.translate(((float) paddingStart) + (((float) paddingEnd) / 2.0f), ((float) paddingTop) + (((float) height) / 2.0f));
                canvas.rotate((float) (-this.vc.io()));
                canvas.translate(((float) (-i)) / 2.0f, ((float) (-i2)) / 2.0f);
                drawable.draw(canvas);
                canvas.restoreToCount(saveCount);
            }
        }
    }

    public void sk(boolean z) {
        this.vb = z;
    }

    public void sj(Bitmap bitmap) {
        if (bitmap == null) {
            this.vd = null;
            this.ve = null;
            if (this.vb) {
                setImageResource(R.drawable.thumbnail);
            } else {
                setImageDrawable(null);
                setVisibility(8);
            }
            return;
        }
        LayoutParams layoutParams = getLayoutParams();
        this.vd = ThumbnailUtils.extractThumbnail(bitmap, (layoutParams.width - getPaddingStart()) - getPaddingEnd(), (layoutParams.height - getPaddingTop()) - getPaddingBottom());
        if (this.vb) {
            this.vd = sl(this.vd);
        }
        this.ve = new Drawable[2];
        this.ve[1] = new BitmapDrawable(getContext().getResources(), this.vd);
        setImageDrawable(this.ve[1]);
        setVisibility(0);
    }

    public Bitmap sl(Bitmap bitmap) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f = (float) width;
            f2 = (float) width;
            f3 = (float) width;
            f4 = (float) width;
            f5 = (float) (width / 2);
            height = width;
            f6 = 0.0f;
        } else {
            f5 = (float) (height / 2);
            f6 = (float) ((width - height) / 2);
            f2 = ((float) width) - f6;
            f = (float) height;
            f3 = (float) height;
            f4 = (float) height;
            width = height;
        }
        Bitmap createBitmap = Bitmap.createBitmap(height, width, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f6, (int) null, (int) f2, (int) f);
        Rect rect2 = new Rect((int) null, (int) null, (int) f3, (int) f4);
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f5, f5, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }
}
