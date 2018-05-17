package com.android.common.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.widget.CompoundButton;
import com.android.camera.C0172c;
import com.android.camera.R;

public class MySwitch extends CompoundButton {
    private static final int[] nw = new int[]{16842912};
    private int nA;
    private int nB;
    private int nC;
    private int nD;
    private int nE;
    private int nF;
    private int nG;
    private int nH;
    private int nI;
    private final Rect nJ;
    private ColorStateList nK;
    private CharSequence nL;
    private CharSequence nM;
    private TextPaint nN;
    private Drawable nO;
    private int nP;
    private Drawable nQ;
    private Drawable nR;
    private int nS;
    private float nT;
    private int nU;
    private int nV;
    private int nW;
    private int nX;
    private float nY;
    private float nZ;
    private int nx;
    private Layout ny;
    private Layout nz;
    private Drawable oa;
    private Drawable ob;
    private Drawable oc;
    private VelocityTracker od;

    public void lh(android.graphics.Typeface r1, int r2) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.DecodeException: Load method exception in method: com.android.common.ui.MySwitch.lh(android.graphics.Typeface, int):void
	at jadx.core.dex.nodes.MethodNode.load(MethodNode.java:116)
	at jadx.core.dex.nodes.ClassNode.load(ClassNode.java:249)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
Caused by: jadx.core.utils.exceptions.DecodeException: Unknown instruction: not-int
	at jadx.core.dex.instructions.InsnDecoder.decode(InsnDecoder.java:568)
	at jadx.core.dex.instructions.InsnDecoder.process(InsnDecoder.java:56)
	at jadx.core.dex.nodes.MethodNode.load(MethodNode.java:102)
	... 5 more
*/
        /*
        // Can't load method instructions.
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ui.MySwitch.lh(android.graphics.Typeface, int):void");
    }

    public MySwitch(Context context) {
        this(context, null);
    }

    public MySwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public MySwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.od = VelocityTracker.obtain();
        this.nJ = new Rect();
        this.nN = new TextPaint(1);
        Resources resources = getResources();
        this.nN.density = resources.getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHN, i, 0);
        this.oc = obtainStyledAttributes.getDrawable(0);
        this.ob = obtainStyledAttributes.getDrawable(1);
        if (kZ()) {
            this.oa = this.ob;
        } else {
            this.oa = obtainStyledAttributes.getDrawable(6);
        }
        this.nR = obtainStyledAttributes.getDrawable(2);
        this.nQ = obtainStyledAttributes.getDrawable(3);
        if (kY()) {
            this.nO = this.nQ;
        } else {
            this.nO = obtainStyledAttributes.getDrawable(5);
        }
        this.nM = obtainStyledAttributes.getText(7);
        this.nL = obtainStyledAttributes.getText(8);
        this.nU = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        this.nE = obtainStyledAttributes.getDimensionPixelSize(11, 0);
        this.nD = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.nF = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        int resourceId = obtainStyledAttributes.getResourceId(10, 0);
        if (resourceId != 0) {
            lf(context, resourceId);
        }
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.nX = viewConfiguration.getScaledTouchSlop();
        this.nx = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void lf(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C0172c.aHO);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(0);
        if (colorStateList != null) {
            this.nK = colorStateList;
        } else {
            this.nK = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (!(dimensionPixelSize == 0 || ((float) dimensionPixelSize) == this.nN.getTextSize())) {
            this.nN.setTextSize((float) dimensionPixelSize);
            requestLayout();
        }
        li(obtainStyledAttributes.getInt(3, -1), obtainStyledAttributes.getInt(2, -1));
        obtainStyledAttributes.recycle();
    }

    private void li(int i, int i2) {
        Typeface typeface = null;
        switch (i) {
            case 1:
                typeface = Typeface.SANS_SERIF;
                break;
            case 2:
                typeface = Typeface.SERIF;
                break;
            case 3:
                typeface = Typeface.MONOSPACE;
                break;
        }
        lh(typeface, i2);
    }

    private boolean kZ() {
        return (this.oc == null || this.ob == null) ? false : true;
    }

    private boolean kY() {
        return (this.nQ == null || this.nR == null) ? false : true;
    }

    public void lg(Typeface typeface) {
        if (this.nN.getTypeface() != typeface) {
            this.nN.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void onMeasure(int i, int i2) {
        int intrinsicHeight;
        if (this.nz == null) {
            this.nz = ld(this.nM);
        }
        if (this.ny == null) {
            this.ny = ld(this.nL);
        }
        this.oa.getPadding(this.nJ);
        int max = Math.max(this.nE, (((Math.max(this.nz.getWidth(), this.ny.getWidth()) * 2) + (this.nU * 4)) + this.nJ.left) + this.nJ.right);
        if (this.nD <= 0) {
            intrinsicHeight = this.oa.getIntrinsicHeight();
        } else {
            intrinsicHeight = Math.max(this.nD, this.nJ.top + this.nJ.bottom);
        }
        this.nV = this.nO.getIntrinsicWidth();
        this.nP = this.nO.getIntrinsicHeight();
        this.nI = max;
        this.nB = intrinsicHeight;
        this.nS = (((this.nB - this.nP) - this.nJ.top) - this.nJ.bottom) / 2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() >= intrinsicHeight) {
            return;
        }
        if (VERSION.SDK_INT >= 11) {
            setMeasuredDimension(getMeasuredWidthAndState(), intrinsicHeight);
        } else {
            setMeasuredDimension(getMeasuredWidth(), intrinsicHeight);
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        le(accessibilityEvent);
        return false;
    }

    public void le(AccessibilityEvent accessibilityEvent) {
        Layout layout = isChecked() ? this.nz : this.ny;
        if (layout != null && !TextUtils.isEmpty(layout.getText())) {
            accessibilityEvent.getText().add(layout.getText());
        }
    }

    private Layout ld(CharSequence charSequence) {
        CharSequence charSequence2;
        if (charSequence == null) {
            charSequence2 = "";
        } else {
            charSequence2 = charSequence;
        }
        return new StaticLayout(charSequence2, this.nN, (int) Math.ceil((double) Layout.getDesiredWidth(charSequence2, this.nN)), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private boolean lc(float f, float f2) {
        this.nO.getPadding(this.nJ);
        int i = this.nH - this.nX;
        int i2 = (this.nC + ((int) (this.nT + 0.5f))) - this.nX;
        int i3 = (((this.nV + i2) + this.nJ.left) + this.nJ.right) + this.nX;
        int i4 = this.nA + this.nX;
        if (f <= ((float) i2) || f >= ((float) i3) || f2 <= ((float) i) || f2 >= ((float) i4)) {
            return false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.od.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (VERSION.SDK_INT >= 8) {
            action = motionEvent.getActionMasked();
        }
        float x;
        float y;
        switch (action) {
            case 0:
                x = motionEvent.getX();
                y = motionEvent.getY();
                if (isEnabled() && lc(x, y)) {
                    this.nW = 1;
                    this.nY = x;
                    this.nZ = y;
                    break;
                }
            case 1:
            case 3:
                if (this.nW != 2) {
                    this.nW = 0;
                    this.od.clear();
                    break;
                }
                lj(motionEvent);
                return true;
            case 2:
                switch (this.nW) {
                    case 0:
                        break;
                    case 1:
                        x = motionEvent.getX();
                        y = motionEvent.getY();
                        if (Math.abs(x - this.nY) > ((float) this.nX) || Math.abs(y - this.nZ) > ((float) this.nX)) {
                            this.nW = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.nY = x;
                            this.nZ = y;
                            return true;
                        }
                    case 2:
                        x = motionEvent.getX();
                        y = Math.max(0.0f, Math.min((x - this.nY) + this.nT, (float) lb()));
                        if (y != this.nT) {
                            this.nT = y;
                            this.nY = x;
                            invalidate();
                        }
                        return true;
                    default:
                        break;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    private void kX(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private void lj(MotionEvent motionEvent) {
        boolean isEnabled;
        boolean z = false;
        this.nW = 0;
        if (motionEvent.getAction() == 1) {
            isEnabled = isEnabled();
        } else {
            isEnabled = false;
        }
        kX(motionEvent);
        if (isEnabled) {
            this.od.computeCurrentVelocity(1000);
            float xVelocity = this.od.getXVelocity();
            if (Math.abs(xVelocity) <= ((float) this.nx)) {
                z = la();
            } else if (xVelocity > 0.0f) {
                z = true;
            }
            kW(z);
            return;
        }
        kW(isChecked());
    }

    private void kW(boolean z) {
        setChecked(z);
    }

    private boolean la() {
        return this.nT >= ((float) (lb() / 2));
    }

    public void setChecked(boolean z) {
        int i;
        int i2 = 1;
        int i3 = 0;
        if (kZ()) {
            this.oa = z ? this.oc : this.ob;
            i = 1;
        } else {
            i = 0;
        }
        if (kY()) {
            this.nO = z ? this.nR : this.nQ;
        } else {
            i2 = i;
        }
        if (i2 != 0) {
            refreshDrawableState();
        }
        super.setChecked(z);
        if (z) {
            i3 = lb();
        }
        this.nT = (float) i3;
        invalidate();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5 = 0;
        super.onLayout(z, i, i2, i3, i4);
        if (isChecked()) {
            i5 = lb();
        }
        this.nT = (float) i5;
        int width = getWidth() - getPaddingEnd();
        int i6 = width - this.nI;
        switch (getGravity() & 112) {
            case 16:
                paddingTop = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (this.nB / 2);
                i5 = this.nB + paddingTop;
                break;
            case 80:
                i5 = getHeight() - getPaddingBottom();
                paddingTop = i5 - this.nB;
                break;
            default:
                paddingTop = getPaddingTop();
                i5 = this.nB + paddingTop;
                break;
        }
        this.nC = i6;
        this.nH = paddingTop;
        this.nA = i5;
        this.nG = width;
    }

    protected void onDraw(Canvas canvas) {
        Object obj = 1;
        super.onDraw(canvas);
        int i = this.nC;
        int i2 = this.nH;
        int i3 = this.nG;
        int i4 = this.nA;
        Object obj2 = null;
        if (kZ()) {
            this.oa = la() ? this.oc : this.ob;
            obj2 = 1;
        }
        if (kY()) {
            this.nO = la() ? this.nR : this.nQ;
        } else {
            obj = obj2;
        }
        if (obj != null) {
            refreshDrawableState();
        }
        this.oa.setBounds(i, i2, i3, i4);
        this.oa.draw(canvas);
        canvas.save();
        this.oa.getPadding(this.nJ);
        int i5 = this.nJ.left + i;
        int i6 = (this.nJ.top + i2) + this.nS;
        i = i3 - this.nJ.right;
        i3 = (i4 - this.nJ.bottom) - this.nS;
        canvas.clipRect(i5, i2, i, i4);
        this.nO.getPadding(this.nJ);
        i = (int) (this.nT + 0.5f);
        i2 = (i5 - this.nJ.left) + i;
        i = this.nJ.right + ((i5 + i) + this.nV);
        this.nO.setBounds(i2, i6 - this.nJ.top, i, (this.nJ.bottom + i6) + this.nP);
        this.nO.draw(canvas);
        if (this.nK != null) {
            this.nN.setColor(this.nK.getColorForState(getDrawableState(), this.nK.getDefaultColor()));
        }
        this.nN.drawableState = getDrawableState();
        Layout layout = la() ? this.nz : this.ny;
        if (layout != null) {
            canvas.translate((float) (((i + i2) / 2) - (layout.getWidth() / 2)), (float) (((i6 + i3) / 2) - (layout.getHeight() / 2)));
            layout.draw(canvas);
        }
        canvas.restore();
    }

    public int getCompoundPaddingRight() {
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.nI;
        if (TextUtils.isEmpty(getText())) {
            return compoundPaddingRight;
        }
        return compoundPaddingRight + this.nF;
    }

    private int lb() {
        if (this.oa == null) {
            return 0;
        }
        this.oa.getPadding(this.nJ);
        return ((this.nI - this.nV) - this.nJ.left) - this.nJ.right;
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, nw);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        if (this.nO != null) {
            this.nO.setState(drawableState);
        }
        if (this.oa != null) {
            this.oa.setState(drawableState);
        }
        invalidate();
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.nO || drawable == this.oa;
    }
}
