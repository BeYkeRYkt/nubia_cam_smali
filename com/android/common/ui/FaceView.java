package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.Camera.Face;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;

public class FaceView extends View implements C0474A {
    private final boolean wi = false;
    final int wj = 0;
    private final int wk = 60;
    private int wl;
    private final Drawable wm;
    private final Drawable wn;
    private final Drawable wo;
    private Drawable wp;
    private Face[] wq;
    Handler wr = new bo(this);
    private Matrix ws = new Matrix();
    private boolean wt;
    private int wu;
    private Paint wv;
    private boolean ww;
    private RectF wx = new RectF();
    private final int wy = 30;
    private final int wz = 60;

    public FaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (C0421M.dC().dD().cF()) {
            this.wo = getResources().getDrawable(R.drawable.ic_face_pretty);
            this.wn = getResources().getDrawable(R.drawable.ic_face_pretty);
            this.wm = getResources().getDrawable(R.drawable.ic_face_pretty);
        } else {
            this.wo = getResources().getDrawable(R.drawable.ic_face);
            this.wn = getResources().getDrawable(R.drawable.ic_face);
            this.wm = getResources().getDrawable(R.drawable.ic_face);
        }
        this.wp = this.wo;
        this.wv = new Paint();
        this.wv.setAntiAlias(true);
        this.wv.setDither(true);
        this.wv.setColor(-1);
        this.wv.setStyle(Style.STROKE);
        this.wv.setStrokeCap(Cap.ROUND);
        this.wv.setStrokeWidth(10.0f);
    }

    public void sW(Face[] faceArr) {
        if (!this.ww) {
            this.wq = faceArr;
            invalidate();
            this.wr.removeMessages(0);
            this.wr.sendEmptyMessageDelayed(0, 500);
        }
    }

    public void sT(int i) {
        this.wl = i;
    }

    public void fc(int i, boolean z) {
        this.wu = i;
        invalidate();
    }

    public void sU(boolean z) {
        this.wt = z;
    }

    public boolean sS() {
        return this.wq != null && this.wq.length > 0;
    }

    public void clear() {
        this.wp = this.wo;
        this.wq = null;
        invalidate();
        this.wr.removeMessages(0);
    }

    public void sV() {
        this.ww = false;
    }

    protected void onDraw(Canvas canvas) {
        if (this.wq != null && this.wq.length > 0) {
            C0616j.aoY(this.ws, this.wt, this.wl, getWidth(), getHeight());
            canvas.save();
            this.ws.postRotate((float) this.wu);
            canvas.rotate((float) (-this.wu));
            for (Face face : this.wq) {
                this.wx.set(face.rect);
                this.ws.mapRect(this.wx);
                this.wp.setBounds(Math.round(this.wx.left), Math.round(this.wx.top), Math.round(this.wx.right), Math.round(this.wx.bottom));
                this.wp.draw(canvas);
            }
            canvas.restore();
        }
        super.onDraw(canvas);
    }
}
