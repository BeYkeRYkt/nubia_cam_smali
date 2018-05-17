package com.android.common.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.util.AttributeSet;
import com.android.camera.C0172c;
import com.p010a.C0090a;

public class RotateTextImageView extends RotateImageView {
    private String uG = null;
    private ColorStateList uH = null;
    private int uI = -1;

    public RotateTextImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        rN(context, attributeSet);
    }

    public RotateTextImageView(Context context) {
        super(context);
    }

    private void rN(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHV);
        try {
            this.uG = obtainStyledAttributes.getString(0);
            if (this.uG == null) {
                if (obtainStyledAttributes != null) {
                    obtainStyledAttributes.recycle();
                }
                return;
            }
            this.uI = obtainStyledAttributes.getDimensionPixelSize(2, 15);
            this.uH = obtainStyledAttributes.getColorStateList(1);
            setImageBitmap(rM(getBackground().getIntrinsicWidth(), getBackground().getIntrinsicHeight(), this.uG, this.uH.getColorForState(getDrawableState(), 0), this.uI));
            if (obtainStyledAttributes != null) {
                obtainStyledAttributes.recycle();
            }
        } catch (Throwable e) {
            C0090a.bvi("RotateTextImageView", "readAttr failed", e);
            if (obtainStyledAttributes != null) {
                obtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            if (obtainStyledAttributes != null) {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public void rI(int i) {
        try {
            this.uG = getResources().getString(i);
            if (!(this.uG + "").equals("@0")) {
                setImageBitmap(rM(getBackground().getIntrinsicWidth(), getBackground().getIntrinsicHeight(), this.uG, this.uH.getColorForState(getDrawableState(), 0), this.uI));
            }
        } catch (Throwable e) {
            C0090a.bvi("RotateTextImageView", "setText failed", e);
        }
    }

    private Bitmap rM(int i, int i2, String str, int i3, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColor(i3);
        paint.setTextSize((float) i4);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawText(str, (((float) i) - rL(paint, str)) / 2.0f, ((((float) i2) - rJ(paint)) / 2.0f) + rK(paint), paint);
        return createBitmap;
    }

    private float rL(Paint paint, String str) {
        return paint.measureText(str);
    }

    private float rJ(Paint paint) {
        FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.descent - fontMetrics.ascent;
    }

    private float rK(Paint paint) {
        FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.leading - fontMetrics.ascent;
    }
}
