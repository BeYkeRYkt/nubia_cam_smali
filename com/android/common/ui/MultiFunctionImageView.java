package com.android.common.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import com.android.camera.C0172c;
import com.android.common.appService.C0311O;
import com.android.common.appService.C0312P;
import com.p010a.C0090a;

public class MultiFunctionImageView extends ImageView implements C0311O, C0312P {
    private final String TAG = "MultiFunctionImageView";
    private C0752b oA;
    private C0736L oB;
    private C0675u oC;
    private C0728B oD;
    private C0675u oE;
    private ak oF;
    private Function oG = Function.IDLE;
    private VideoAnimation$Color om = VideoAnimation$Color.RED;
    private C0742S on;
    private float oo = 0.0f;
    private Function op = Function.IDLE;
    private an oq;
    private Handler or = new C0765v();
    private boolean os = false;
    private boolean ot = false;
    private boolean ou = true;
    private boolean ov = false;
    private boolean ow = Log.isLoggable("MultiFunctionImageView", 3);
    private boolean ox = true;
    private boolean oy = false;
    private boolean oz = false;

    public enum Function {
        IDLE(0),
        WAIT(1),
        COMPASS(2),
        GRADIENTER(3),
        PROGRESS(4);
        
        int value;

        private Function(int i) {
            this.value = i;
        }

        static Function lV(int i) {
            switch (i) {
                case 1:
                    return WAIT;
                case 2:
                    return COMPASS;
                case 3:
                    return GRADIENTER;
                case 4:
                    return PROGRESS;
                default:
                    return IDLE;
            }
        }
    }

    public MultiFunctionImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MultiFunctionImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHP);
        Function lV = Function.lV(obtainStyledAttributes.getInt(0, Function.IDLE.value));
        if (lV == Function.WAIT || lV == Function.PROGRESS) {
            this.oG = lV;
        } else if (lV == Function.COMPASS) {
            this.ot = true;
        } else if (lV == Function.GRADIENTER) {
            this.ov = true;
        }
        this.om = VideoAnimation$Color.mR(obtainStyledAttributes.getInt(1, VideoAnimation$Color.RED.value));
        C0090a.bvo("MultiFunctionImageView", "init Function " + lV + " Color " + this.om);
        obtainStyledAttributes.recycle();
    }

    public MultiFunctionImageView(Context context) {
        super(context);
    }

    public void lw(Function function) {
        C0090a.m0d("MultiFunctionImageView", "setFunction " + function);
        if (function == Function.WAIT || function == Function.PROGRESS || function == Function.IDLE) {
            this.oG = function;
        } else if (function == Function.COMPASS) {
            this.ot = true;
        } else if (function == Function.GRADIENTER) {
            this.ov = true;
        }
        lT(0);
    }

    public void lB(Function function) {
        if (function == this.oG) {
            this.oG = Function.IDLE;
        } else if (function == Function.COMPASS) {
            this.ot = false;
        } else if (function == Function.GRADIENTER) {
            this.ov = false;
        }
        lT(0);
    }

    public void lx(int i, boolean z) {
        lU(i, z, null);
    }

    public void lU(int i, boolean z, C0675u c0675u) {
        this.oC = c0675u;
        lN().pC(i, z);
        lT(0);
    }

    public void lH(float f, boolean z) {
        if (this.ov) {
            lL().sX(f, z);
            lT(0);
        }
    }

    public void lG(float f) {
        this.oo = f;
        if (this.ov) {
            lL().sY(f);
            lT(0);
        }
        if (this.ot) {
            lK().qo(f);
        }
    }

    public void lF(float f, boolean z) {
        if (this.ot) {
            lK().qp(f, z);
            lT(0);
        }
    }

    public void lS(float f) {
        lH(f, true);
    }

    public void lR(float f) {
        lG(f);
    }

    public void lQ(float f) {
        lF(f, true);
    }

    public void lD(boolean z) {
        this.ox = z;
    }

    public void lE() {
        ly(false);
    }

    public void ly(boolean z) {
        C0090a.m0d("MultiFunctionImageView", "playStartRecordAnimation (hideTheRing:" + z + ")");
        this.os = z;
        this.oz = true;
        lO().mI(1, true);
        lT(0);
    }

    public void lz(C0675u c0675u) {
        C0090a.m0d("MultiFunctionImageView", "playStopRecordAnimation");
        this.oz = true;
        this.oE = c0675u;
        lO().mI(0, true);
        lT(0);
    }

    public void lC() {
        C0090a.m0d("MultiFunctionImageView", "endAnimation");
        if (this.oE != null) {
            C0090a.m0d("MultiFunctionImageView", "onAnimationEnd");
            this.oE.lW();
            this.oE = null;
        }
        lO().cancel();
        if (this.oC != null) {
            this.oC.lW();
            this.oC = null;
        }
        lT(0);
    }

    public void lA() {
        C0090a.m0d("MultiFunctionImageView", "cancelAnimation");
        this.oE = null;
        lO().mI(0, false);
        lO().cancel();
        lT(0);
    }

    public boolean lI() {
        return this.oE != null;
    }

    protected void onDraw(Canvas canvas) {
        if (!isEnabled()) {
            super.onDraw(canvas);
        } else if (this.oG == Function.PROGRESS) {
            this.op = Function.PROGRESS;
            if (lN().draw(canvas)) {
                lT(25);
            } else if (this.oC != null && lN().pD()) {
                this.oC.lW();
                this.oC = null;
            }
        } else if (this.oG == Function.WAIT) {
            this.op = Function.WAIT;
            canvas.save();
            canvas.clipPath(lP().sm(canvas.getWidth(), canvas.getHeight()));
            if (this.oz) {
                lJ(canvas);
            } else {
                super.onDraw(canvas);
            }
            canvas.restore();
            lP().draw(canvas);
            lT(25);
        } else if (this.ot && (Math.abs(this.oo) > 50.0f || (Math.abs(this.oo) > 40.0f && this.op == Function.COMPASS))) {
            this.op = Function.COMPASS;
            if (lK().draw(canvas)) {
                lT(25);
            }
        } else if (this.ov) {
            this.op = Function.GRADIENTER;
            if (lL().draw(canvas)) {
                lT(25);
            }
        } else if (this.oz) {
            lJ(canvas);
            if (!this.os) {
                super.onDraw(canvas);
            }
        } else if (this.oy && this.ox) {
            this.op = Function.IDLE;
            if (lM().draw(canvas)) {
                lT(25);
            }
        } else {
            this.op = Function.IDLE;
            super.onDraw(canvas);
        }
    }

    protected void drawableStateChanged() {
        if (this.ou || !isEnabled()) {
            if (this.ou && !isEnabled()) {
                this.ou = isEnabled();
                lT(0);
            }
            if (!this.oy && isPressed() && isEnabled()) {
                this.oy = true;
                lM().gJ();
                lT(0);
            } else if (this.oy && !isPressed()) {
                this.oy = false;
                lM().gK();
                lT(0);
            }
            super.drawableStateChanged();
            return;
        }
        this.ou = isEnabled();
        lT(0);
        super.drawableStateChanged();
    }

    private void lJ(Canvas canvas) {
        if (lO().draw(canvas)) {
            lT(25);
        } else if (this.oE != null) {
            C0090a.m0d("MultiFunctionImageView", "onAnimationEnd");
            this.oE.lW();
            this.oE = null;
        }
    }

    private void lT(long j) {
        if (!this.or.hasMessages(1)) {
            this.or.sendEmptyMessageDelayed(1, j);
        }
    }

    private ak lP() {
        if (this.oF == null) {
            this.oF = new ak(getResources());
        }
        return this.oF;
    }

    private C0736L lN() {
        if (this.oB == null) {
            this.oB = new C0736L(getResources());
        }
        return this.oB;
    }

    private an lL() {
        if (this.oq == null) {
            this.oq = new an(getResources());
        }
        return this.oq;
    }

    private C0742S lK() {
        if (this.on == null) {
            this.on = new C0742S(getResources());
        }
        return this.on;
    }

    private C0752b lM() {
        if (this.oA == null) {
            this.oA = new C0752b(getResources());
        }
        return this.oA;
    }

    private C0728B lO() {
        if (this.oD == null) {
            this.oD = new C0728B(getResources());
            this.oD.mJ(this.om);
        }
        return this.oD;
    }
}
