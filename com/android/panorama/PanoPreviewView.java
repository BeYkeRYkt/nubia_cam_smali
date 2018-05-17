package com.android.panorama;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;

public class PanoPreviewView extends View {
    private static final int aST = C0616j.aoT(5);
    private static final int[] aSU = new int[]{R.drawable.pano_left_normal, R.drawable.pano_right_normal, R.drawable.pano_up_normal, R.drawable.pano_down_normal};
    private final int aSV = -1711276033;
    private final int aSW = C0616j.aoT(12);
    private ValueAnimator aSX;
    private int aSY = 1207959551;
    private Rect aSZ;
    private int aTa;
    private int aTb;
    private int aTc = 0;
    private Drawable[] aTd = new Drawable[4];
    private int aTe = 939524096;
    private Rect aTf;
    private Rect aTg;
    private Paint aTh = new Paint();
    private int aTi = 0;
    private int aTj = 0;
    private int aTk = 1440;
    private int aTl = 1080;
    private int aTm = 8;
    private String aTn;
    private Paint aTo = new Paint();
    private Rect aTp = new Rect();
    private int aTq = 1440;
    private int aTr = 1080;
    private Bitmap aTs;
    private Bitmap aTt;
    private int[] aTu = null;

    public PanoPreviewView(Context context, AttributeSet attributeSet) {
        int i = 0;
        super(context, attributeSet);
        while (i < 4) {
            this.aTd[i] = context.getResources().getDrawable(aSU[i]);
            i++;
        }
        this.aTn = context.getResources().getString(R.string.doc_panorama_tip);
        this.aTh.setColor(this.aTe);
        this.aTo.setAntiAlias(true);
        this.aTo.setColor(-1711276033);
        this.aTo.setTextAlign(Align.CENTER);
        this.aTo.setTextSize((float) this.aSW);
        this.aTo.setStrokeWidth((float) C0616j.aoT(1));
        this.aTo.setShadowLayer(25.0f, 0.0f, 0.0f, -16777216);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = 10;
        super.onLayout(z, i, i2, i3, i4);
        this.aTr = i3 - i;
        this.aTq = i4 - i2;
        this.aTm = bjV(this.aTl, this.aTr, 6);
        switch ((this.aTj + 90) % 360) {
            case 0:
            case 180:
                i5 = this.aTl / this.aTm;
                i6 = this.aTk / this.aTm;
                break;
            case 90:
            case 270:
                i5 = this.aTk / this.aTm;
                i6 = this.aTl / this.aTm;
                break;
            default:
                i5 = 10;
                break;
        }
        if (this.aTs != null) {
            this.aTs.recycle();
            this.aTs = null;
        }
        this.aTs = Bitmap.createBitmap(i5, i6, Config.ARGB_8888);
        this.aTa = this.aTr / 2;
        this.aTb = this.aTq / 2;
        this.aTg = new Rect(0, 0, i5 * 7, i6);
        bjX();
        bjW(this.aTj);
    }

    private int bjV(int i, int i2, int i3) {
        return (i3 * i) / i2;
    }

    public void setPreviewSize(int i, int i2) {
        this.aTk = i2;
        this.aTl = i;
    }

    private void bjX() {
        if (this.aTs == null) {
            this.aTg = new Rect();
            return;
        }
        int height;
        if (this.aTj % 180 != 0) {
            this.aTg = new Rect(0, 0, this.aTq, this.aTs.getWidth());
            height = this.aTa - this.aTg.height();
        } else {
            this.aTg = new Rect(0, 0, this.aTr, this.aTs.getHeight());
            height = this.aTb - this.aTg.height();
        }
        this.aTg.offsetTo(this.aTa - (this.aTg.width() / 2), ((height + this.aTb) - (this.aTg.height() / 2)) - (aST * 6));
    }

    private void bjU(Canvas canvas, int i, Rect rect, Paint paint) {
        canvas.save();
        switch (i) {
            case 90:
                canvas.rotate(270.0f, (float) rect.centerX(), (float) rect.centerY());
                canvas.translate(0.0f, (float) (((-rect.width()) / 2) - aST));
                break;
            case 180:
                canvas.rotate(180.0f, (float) rect.centerX(), (float) rect.centerY());
                canvas.translate(0.0f, (float) (((-rect.height()) / 2) - aST));
                break;
            case 270:
                canvas.rotate(90.0f, (float) rect.centerX(), (float) rect.centerY());
                canvas.translate(0.0f, (float) (((-rect.width()) / 2) - aST));
                break;
            default:
                canvas.translate(0.0f, (float) ((rect.height() / 2) + (aST * 4)));
                break;
        }
        if (this.aTc == 0) {
            paint.setColor(-1711276033);
            canvas.drawText(this.aTn, (float) rect.centerX(), (float) rect.centerY(), paint);
        }
        canvas.restore();
        paint.setColor(-21965);
        if (rect.width() > rect.height()) {
            canvas.drawLine(0.0f, (float) rect.centerY(), (float) this.aTr, (float) rect.centerY(), paint);
            return;
        }
        canvas.drawLine((float) rect.centerX(), 0.0f, (float) rect.centerX(), (float) this.aTq, paint);
    }

    private Rect bjW(int i) {
        Rect rect;
        int width;
        int height;
        int i2;
        switch (i) {
            case 90:
                width = this.aTg.width();
                height = this.aTg.height();
                i2 = (this.aTa * 2) - height;
                int i3 = this.aTb;
                rect = new Rect(i2 - (height / 2), i3 - (width / 2), (height / 2) + i2, (width / 2) + i3);
                break;
            case 180:
                width = this.aTb - this.aTg.centerY();
                rect = new Rect(this.aTg);
                rect.offset(0, width * 2);
                break;
            case 270:
                width = this.aTg.width();
                height = this.aTg.height();
                i2 = this.aTb;
                rect = new Rect(height - (height / 2), i2 - (width / 2), height + (height / 2), (width / 2) + i2);
                break;
            default:
                rect = new Rect(this.aTg);
                break;
        }
        this.aSZ = rect;
        return rect;
    }

    protected void onDraw(Canvas canvas) {
        int i = 0;
        if (this.aSX != null) {
            i = ((Integer) this.aSX.getAnimatedValue()).intValue();
        }
        Paint paint = this.aTh;
        bjU(canvas, this.aTj, this.aSZ, this.aTo);
        switch (this.aTc) {
            case 0:
                bjT(canvas, this.aTg, this.aTs, i);
                return;
            case 1:
                bjS(canvas, this.aSZ, this.aTt, i);
                return;
            default:
                return;
        }
    }

    public void bjZ(Bitmap bitmap, Point point, int i) {
        this.aTc = 1;
        this.aTt = bitmap;
        this.aTf = bjR(this.aTt, point, this.aSZ, i);
        invalidate();
    }

    private Rect bjR(Bitmap bitmap, Point point, Rect rect, int i) {
        float height = ((float) rect.height()) / ((float) bitmap.getHeight());
        point.x = (int) ((((float) rect.width()) / ((float) bitmap.getWidth())) * ((float) point.x));
        point.y = (int) (((float) point.y) * height);
        int width = this.aTs.getWidth();
        int height2 = this.aTs.getHeight();
        Rect rect2 = new Rect(0, 0, width, height2);
        rect2.offsetTo(rect.left, rect.top);
        switch (i) {
            case 3:
                width = (-width) / 2;
                this.aTi = 3;
                break;
            case 4:
                height2 = (-height2) / 2;
                this.aTi = 1;
                break;
            case 5:
                width *= -2;
                height2 = (-height2) / 2;
                this.aTi = 0;
                break;
            default:
                width = (-width) / 2;
                height2 *= -2;
                this.aTi = 2;
                break;
        }
        rect2.offset(width + point.x, height2 + point.y);
        if (this.aTj == 90 || this.aTj == 270) {
            height2 = rect2.width() / 6;
        } else {
            height2 = rect2.height() / 6;
        }
        width = rect2.centerX();
        int centerY = rect2.centerY();
        rect2.set(width - height2, centerY - height2, width + height2, height2 + centerY);
        return rect2;
    }

    public void clear() {
        this.aTc = 2;
        invalidate();
    }

    public void bjY() {
        this.aTu = null;
    }

    public void bka(byte[] bArr) {
        this.aTc = 0;
        int width = this.aTs.getWidth();
        int height = this.aTs.getHeight();
        if (this.aTu == null) {
            this.aTu = new int[(width * height)];
        }
        byte[] bArr2 = bArr;
        PanoramaJni.yuv2rgb(bArr2, this.aTl, this.aTk, 0, this.aTu, width, this.aTm, (this.aTj + 90) % 360);
        if (this.aTs.isMutable()) {
            this.aTs.setPixels(this.aTu, 0, width, 0, 0, width, height);
        }
        invalidate();
    }

    private void bjS(Canvas canvas, Rect rect, Bitmap bitmap, int i) {
        canvas.drawRect(this.aSZ, this.aTh);
        canvas.drawBitmap(this.aTt, null, rect, null);
        this.aTd[this.aTi].setAlpha(200);
        this.aTd[this.aTi].setBounds(this.aTf);
        this.aTd[this.aTi].draw(canvas);
    }

    private void bjT(Canvas canvas, Rect rect, Bitmap bitmap, int i) {
        canvas.save();
        canvas.rotate((float) (-this.aTj), (float) this.aTa, (float) this.aTb);
        canvas.drawRect(this.aTg, this.aTh);
        int i2 = (rect.left + rect.right) / 2;
        int i3 = (rect.top + rect.bottom) / 2;
        int i4 = (rect.bottom - rect.top) / 3;
        int width = bitmap.getWidth();
        canvas.drawBitmap(bitmap, (float) (i2 - (width / 2)), (float) rect.top, null);
        this.aTd[0].setAlpha(i);
        this.aTd[1].setAlpha(i);
        this.aTd[0].setBounds(((i2 - (width / 2)) - i4) - (i4 / 2), i3 - (i4 / 2), (i2 - (width / 2)) - (i4 / 2), (i4 / 2) + i3);
        this.aTd[1].setBounds(((width / 2) + i2) + (i4 / 2), i3 - (i4 / 2), ((i2 + (width / 2)) + i4) + (i4 / 2), i3 + (i4 / 2));
        this.aTd[0].draw(canvas);
        this.aTd[1].draw(canvas);
        canvas.restore();
    }

    public void bkb() {
        bkc();
        this.aSX = ValueAnimator.ofInt(new int[]{0, 200});
        this.aSX.setRepeatCount(-1);
        this.aSX.setDuration(500);
        this.aSX.setRepeatMode(2);
        this.aSX.start();
    }

    public void bkc() {
        if (this.aSX != null) {
            this.aSX.cancel();
            this.aSX = null;
        }
    }
}
