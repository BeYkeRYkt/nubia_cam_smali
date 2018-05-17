package com.android.pretty;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.p012e.C0458b;
import com.android.common.ui.C0474A;
import com.p010a.C0090a;

public class WaterDropSeekbar extends View implements C0474A {
    private static final int ass = Color.argb(76, 255, 255, 255);
    private static final int asy = C0616j.aoT(18);
    private float asA;
    boolean asB = false;
    int asC = 5;
    C1054c asD;
    int asE = 0;
    Paint asF = new Paint();
    C1056d asG;
    private String asH;
    Rect asI = new Rect();
    Bitmap asJ;
    Paint asK = new Paint();
    int asL = 100;
    int asM = 10;
    int asN = 50;
    private int asn = 855638016;
    private float aso;
    private float asp;
    private float asq;
    private float asr;
    private int ast = -21965;
    private float asu;
    private float asv;
    private float asw;
    private float asx;
    private float asz;

    public WaterDropSeekbar(Context context) {
        super(context);
        aGl(context.getResources());
    }

    public WaterDropSeekbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        aGl(context.getResources());
    }

    public void aGn(int i) {
        this.asL = i;
    }

    public void aGo(int i) {
        this.asM = i;
    }

    public void aGm(int i) {
        this.asC = i;
        aGf();
    }

    public void aGp(C1054c c1054c) {
        this.asD = c1054c;
    }

    public void aGq(C1056d c1056d) {
        this.asG = c1056d;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            i = this.asN;
            aGf();
            if (i != this.asN) {
                this.asD.aGs(this.asN, this.asC, false);
            }
            if (this.asD != null) {
                this.asD.aGt();
            }
            this.asB = false;
            invalidate();
        } else if (!C0458b.adi().adm()) {
            C0090a.bvo("PrettySeekbar", "ignore touch event because CommandManager is disabled " + MotionEvent.actionToString(motionEvent.getAction()));
            return false;
        }
        if (motionEvent.getAction() == 0) {
            if (motionEvent.getY() < ((float) getHeight()) - this.aso) {
                return false;
            }
            this.asB = true;
        }
        float f = (float) this.asL;
        this.asN = (int) (((motionEvent.getX() - this.asp) * f) / (((float) getWidth()) - (this.asp * 2.0f)));
        if (this.asN < 0) {
            this.asN = 0;
        } else if (this.asN > this.asL) {
            this.asN = this.asL;
        }
        if (C0616j.ahp) {
            this.asN = this.asL - this.asN;
        }
        if (this.asD != null) {
            this.asD.aGs(this.asN, this.asC, true);
        }
        i = this.asC;
        aGe();
        if (!(this.asD == null || i == this.asC)) {
            this.asD.aGr(this.asN, this.asC, true);
        }
        invalidate();
        return true;
    }

    public void fc(int i, boolean z) {
        this.asE = i;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        this.asF.setColor(this.asn);
        int height = canvas.getHeight();
        canvas.drawRect(0.0f, ((float) height) - this.aso, (float) canvas.getWidth(), (float) height, this.asF);
        this.asF.setColor(ass);
        this.asF.setStrokeWidth(3.0f);
        float f = this.asp;
        float width = ((float) canvas.getWidth()) - this.asp;
        float f2 = this.asq;
        canvas.drawLine(f, f2, width, f2, this.asF);
        float width2 = ((((float) canvas.getWidth()) - (this.asp * 2.0f)) * ((float) this.asN)) / ((float) this.asL);
        this.asF.setColor(-1);
        if (C0616j.ahp) {
            f = (((float) canvas.getWidth()) - this.asp) - width2;
            width = ((float) canvas.getWidth()) - this.asp;
        } else {
            f = this.asp;
            width = this.asp + width2;
        }
        f2 = this.asq;
        canvas.drawLine(f, f2, width, f2, this.asF);
        aGh(canvas);
        aGg(canvas, width2);
    }

    private void aGg(Canvas canvas, float f) {
        float width;
        if (C0616j.ahp) {
            width = (((float) canvas.getWidth()) - this.asp) - f;
        } else {
            width = this.asp + f;
        }
        this.asF.setColor(-1);
        float f2 = this.asq;
        canvas.drawCircle(width, f2, this.asr, this.asF);
        this.asF.setTextAlign(Align.CENTER);
        if (this.asC != 0 && this.asC != this.asM) {
            canvas.drawText(aGk(this.asC), width, f2 - ((float) asy), this.asF);
        }
    }

    private String aGk(int i) {
        String str = null;
        if (this.asG != null) {
            str = this.asG.aGw(i);
        }
        if (str != null) {
            return str;
        }
        if (this.asC != 0) {
            return "" + this.asC;
        }
        return aGj();
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(i, MeasureSpec.makeMeasureSpec((int) this.asz, 1073741824));
    }

    private void aGh(Canvas canvas) {
        Align align;
        float width;
        Align align2;
        float f;
        if (C0616j.ahp) {
            align = Align.RIGHT;
            width = ((float) canvas.getWidth()) - this.asp;
            align2 = Align.LEFT;
            f = this.asp;
        } else {
            align = Align.LEFT;
            width = this.asp;
            align2 = Align.RIGHT;
            f = ((float) canvas.getWidth()) - this.asp;
        }
        this.asF.reset();
        this.asF.setTextAlign(align);
        this.asF.setColor(-1);
        this.asF.setTextSize(this.asu);
        this.asF.setAntiAlias(true);
        this.asF.getTextBounds(this.asH, 0, this.asH.length(), this.asI);
        float height = (this.asq + this.asw) + ((float) this.asI.height());
        canvas.drawText(aGj(), width, height, this.asF);
        this.asF.setTextAlign(align2);
        canvas.drawText(aGi(), f, height, this.asF);
    }

    private String aGj() {
        String str = null;
        if (this.asG != null) {
            str = this.asG.aGv();
        }
        return str != null ? str : this.asH;
    }

    private String aGi() {
        String str = null;
        if (this.asG != null) {
            str = this.asG.aGu();
        }
        return str != null ? str : "" + this.asM;
    }

    private void aGf() {
        this.asN = (this.asC * this.asL) / this.asM;
    }

    private void aGe() {
        int i = this.asL / this.asM;
        this.asC = (this.asN + (i / 2)) / i;
    }

    private void aGl(Resources resources) {
        this.asJ = BitmapFactory.decodeResource(resources, R.drawable.pretty_seekbar_tip);
        this.asH = resources.getString(R.string.pref_camera_multishot_off);
        this.asp = resources.getDimension(R.dimen.dimens_34);
        this.asz = resources.getDimension(R.dimen.dimens_72);
        this.asx = resources.getDimension(R.dimen.dimens_7);
        this.asv = resources.getDimension(R.dimen.dimens_14);
        this.asu = resources.getDimension(R.dimen.dimens_10);
        this.asw = resources.getDimension(R.dimen.dimens_15);
        this.aso = resources.getDimension(R.dimen.dimens_67);
        this.asr = resources.getDimension(R.dimen.dimens_12);
        this.asA = resources.getDimension(R.dimen.dimens_6);
        this.asq = this.asz - (this.aso / 2.0f);
    }
}
