package com.android.common.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View.OnTouchListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.android.camera.C0172c;
import com.android.camera.R;
import com.android.common.C0616j;
import com.p010a.C0090a;

public class CameraSelectButton extends SurfaceView implements Callback {
    private static final int lu = C0616j.aoT(18);
    private static final int lv = C0616j.aoT(14);
    private boolean lA;
    private C0219n lB;
    private String[] lC;
    private int lD = getResources().getColor(R.color.bar_background);
    private int lE;
    private int lF;
    private int lG;
    private int lH;
    private int lI = 300;
    private C0761m lJ = new C0761m();
    private boolean lK = false;
    private int[] lL = new int[2];
    private boolean lM = true;
    private boolean lN = false;
    private int lO = 0;
    private Scroller lP;
    private int lQ = 0;
    private int lR;
    private int lS;
    private int lT = -805306369;
    private int lU = lu;
    private Paint lV;
    private int lW = lv;
    private int[] lX;
    private int[] lY;
    private C0762o lZ = null;
    private PorterDuffXfermode lw = new PorterDuffXfermode(Mode.DST_OUT);
    private int lx = 540;
    private Bitmap ly;
    private Paint lz;
    private OnTouchListener ma = null;

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setZOrderOnTop(true);
        getHolder().setFormat(-3);
    }

    public void jA(C0219n c0219n) {
        this.lB = c0219n;
    }

    public void jB(OnTouchListener onTouchListener) {
        this.ma = onTouchListener;
    }

    public CameraSelectButton(Context context, AttributeSet attributeSet) {
        int i = 0;
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHK);
        int indexCount = obtainStyledAttributes.getIndexCount();
        while (i < indexCount) {
            switch (obtainStyledAttributes.getIndex(i)) {
                case 0:
                    this.lI = obtainStyledAttributes.getInt(i, 300);
                    break;
                case 1:
                    this.lU = obtainStyledAttributes.getDimensionPixelSize(i, lu);
                    break;
                case 2:
                    this.lT = obtainStyledAttributes.getColor(i, -805306369);
                    break;
                case 3:
                    this.lW = obtainStyledAttributes.getDimensionPixelSize(i, lv);
                    break;
                default:
                    break;
            }
            i++;
        }
        obtainStyledAttributes.recycle();
        this.lV = new Paint();
        this.lV.setColor(this.lT);
        this.lV.setTextAlign(Align.CENTER);
        this.lV.setTextSize((float) this.lW);
        this.lV.setStrokeWidth(2.0f);
        this.lV.setAntiAlias(true);
        this.lz = new Paint();
        this.lz.setXfermode(this.lw);
        this.ly = BitmapFactory.decodeResource(getResources(), R.drawable.camera_select_button_background);
    }

    public void setVisibility(int i) {
        this.lO = i;
        if (!this.lN) {
            super.setVisibility(i);
        }
    }

    public void jv() {
        this.lN = true;
    }

    public void jy() {
        this.lN = false;
        setVisibility(this.lO);
    }

    public void setAlpha(float f) {
        float alpha = getAlpha();
        super.setAlpha(f);
        if (this.lZ != null && Math.abs(alpha - f) > 0.01f) {
            this.lZ.jM();
        }
    }

    private void ju() {
        this.lY = new int[this.lC.length];
        this.lX = new int[this.lC.length];
        this.lY[0] = (int) this.lV.measureText(this.lC[0]);
        this.lX[0] = 0;
        for (int i = 1; i < this.lC.length; i++) {
            this.lY[i] = (int) this.lV.measureText(this.lC[i]);
            this.lX[i] = (this.lX[i - 1] + ((this.lY[i - 1] + this.lY[i]) / 2)) + this.lU;
        }
    }

    public void jp(String[] strArr, int i) {
        this.lQ = i;
        this.lC = strArr;
        ju();
        this.lP = new Scroller(getContext(), new DecelerateInterpolator());
        this.lP.setFinalX(-this.lX[this.lQ]);
        getHolder().addCallback(this);
        ju();
        this.lP.setFinalX(-this.lX[this.lQ]);
        if (this.lZ != null) {
            this.lZ.jM();
        }
    }

    public boolean jr() {
        return this.lK;
    }

    private void jz(int i, int i2) {
        int i3 = -this.lX[i];
        int i4 = this.lX[i] - this.lX[i2];
        if (!this.lP.isFinished()) {
            i4 += i3 - this.lP.getCurrX();
            i3 = this.lP.getCurrX();
        } else if (this.lB != null) {
            C0090a.bvo("CameraSelectButton", "scroll anim start ");
            this.lB.jL(i2);
        }
        this.lP.startScroll(i3, 0, i4, 0, this.lI);
        if (this.lZ != null) {
            this.lZ.jM();
        }
    }

    private int jl(int i) {
        return (int) (((double) this.lx) * Math.asin((double) (((float) i) / ((float) this.lx))));
    }

    private float jw(int i, int i2) {
        return ((float) (Math.sin((double) (((float) (i - i2)) / ((float) this.lx))) * ((double) this.lx))) + ((float) i2);
    }

    private float jo(int i, int i2, int i3) {
        return ((float) (((int) jw((this.lY[i] / 2) + i2, i3)) - ((int) jw(i2 - (this.lY[i] / 2), i3)))) / ((float) this.lY[i]);
    }

    private void jm(Canvas canvas) {
        for (int i = 0; i < this.lC.length; i++) {
            int currX = (this.lP.getCurrX() + this.lE) + this.lX[i];
            float jo = jo(i, currX, this.lE);
            if (jo > 0.0f) {
                float jw = jw(currX, this.lE);
                canvas.save(1);
                this.lV.setAlpha(((int) (200.0f * jo)) + 50);
                if (i == this.lQ) {
                    this.lV.setColor(-21965);
                } else {
                    this.lV.setColor(this.lT);
                }
                canvas.scale(jo, 1.0f, jw, (float) this.lF);
                this.lV.setAlpha((int) (getAlpha() * 255.0f));
                canvas.drawText(this.lC[i], jw, (float) this.lF, this.lV);
                canvas.restore();
            }
        }
        canvas.drawBitmap(this.ly, 0.0f, 0.0f, this.lz);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.lE = (i3 - i) >> 1;
        this.lF = (i4 - i2) >> 1;
        this.lx = this.lE;
        getLocationOnScreen(this.lL);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return jx(motionEvent);
    }

    public boolean jx(MotionEvent motionEvent) {
        if (getVisibility() != 0 || !isEnabled() || (this.ma != null && this.ma.onTouch(this, motionEvent))) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.lR = (int) motionEvent.getX();
                this.lS = (int) motionEvent.getY();
                this.lH = 0;
                this.lG = 0;
                this.lA = true;
                break;
            case 1:
            case 3:
                if (Math.abs(motionEvent.getRawY() - ((float) (this.lL[1] + this.lF))) < ((float) this.lF)) {
                    js(this.lH, this.lR - this.lE);
                    break;
                }
                break;
            case 2:
                this.lH = ((int) motionEvent.getX()) - this.lR;
                this.lG = ((int) motionEvent.getY()) - this.lS;
                if (Math.abs(this.lG) <= 200) {
                    jt(this.lH);
                    break;
                }
                break;
        }
        return true;
    }

    private void jt(int i) {
        if (this.lA) {
            int i2 = this.lQ;
            if (i > 100 && this.lQ > 0) {
                this.lQ--;
            } else if (i < -100 && this.lQ < this.lC.length - 1) {
                this.lQ++;
            }
            if (i2 != this.lQ) {
                this.lA = false;
                jz(i2, this.lQ);
                if (this.lB != null) {
                    this.lB.jI(i2, this.lQ);
                }
            } else if (this.lQ == 0) {
                if (this.lB != null) {
                    this.lB.jH();
                }
            } else if (this.lQ == this.lC.length - 1 && this.lB != null) {
                this.lB.jJ();
            }
        }
    }

    private void js(int i, int i2) {
        if (this.lA && Math.abs(i) < 50) {
            int i3 = this.lQ;
            int jk = jk(jl(i2));
            if (jk == this.lQ) {
                this.lB.jG(this.lQ);
                return;
            }
            if (jk == -1) {
                jk = this.lQ;
            }
            this.lQ = jk;
            if (i3 != this.lQ) {
                this.lA = false;
                jz(i3, this.lQ);
                if (this.lB != null) {
                    this.lB.jI(i3, this.lQ);
                }
            } else if (this.lQ == 0) {
                if (this.lB != null) {
                    this.lB.jH();
                }
            } else if (this.lQ == this.lC.length - 1 && this.lB != null) {
                this.lB.jJ();
            }
        }
    }

    private int jk(int i) {
        int i2;
        if (i > 0) {
            i2 = 1;
        } else {
            i2 = -1;
        }
        int i3 = this.lX[this.lQ] + i;
        int i4 = this.lQ;
        while (i4 < this.lC.length && i4 > -1) {
            if (jq(i3, this.lX[i4] - (this.lY[i4] / 2), this.lX[i4] + (this.lY[i4] / 2))) {
                return i4;
            }
            i4 += i2;
        }
        return -1;
    }

    private boolean jq(int i, int i2, int i3) {
        if (i < i2 || i >= i3) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean jn(android.view.SurfaceHolder r6) {
        /*
        r5 = this;
        r0 = 0;
        r1 = r5.lP;
        r1 = r1.computeScrollOffset();
        r0 = r6.lockCanvas();	 Catch:{ Exception -> 0x001b, all -> 0x0022 }
        r2 = r5.lD;	 Catch:{ Exception -> 0x001b, all -> 0x002c }
        r3 = android.graphics.PorterDuff.Mode.CLEAR;	 Catch:{ Exception -> 0x001b, all -> 0x002c }
        r0.drawColor(r2, r3);	 Catch:{ Exception -> 0x001b, all -> 0x002c }
        r5.jm(r0);	 Catch:{ Exception -> 0x001b, all -> 0x002c }
        if (r0 == 0) goto L_0x001a;
    L_0x0017:
        r6.unlockCanvasAndPost(r0);
    L_0x001a:
        return r1;
    L_0x001b:
        r2 = move-exception;
        if (r0 == 0) goto L_0x001a;
    L_0x001e:
        r6.unlockCanvasAndPost(r0);
        goto L_0x001a;
    L_0x0022:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0026:
        if (r1 == 0) goto L_0x002b;
    L_0x0028:
        r6.unlockCanvasAndPost(r1);
    L_0x002b:
        throw r0;
    L_0x002c:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ui.CameraSelectButton.jn(android.view.SurfaceHolder):boolean");
    }

    public void draw(Canvas canvas) {
    }

    protected void dispatchDraw(Canvas canvas) {
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.lZ = new C0762o(this, surfaceHolder);
        this.lZ.start();
        this.lK = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.lZ != null) {
            this.lZ.quit();
            this.lZ = null;
        }
        this.lK = false;
    }
}
