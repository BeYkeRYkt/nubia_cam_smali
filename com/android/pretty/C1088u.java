package com.android.pretty;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;

public class C1088u {
    public static Bitmap aJy(int i, int i2, int i3) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Style.STROKE);
        paint.setColor(i3);
        paint.setStrokeWidth(5.0f);
        canvas.drawRect(new Rect(0, 0, i, i2), paint);
        return createBitmap;
    }
}
