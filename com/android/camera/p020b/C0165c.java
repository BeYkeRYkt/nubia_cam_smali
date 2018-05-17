package com.android.camera.p020b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;

public class C0165c extends FrameLayout {
    private int aGG = 0;
    private int aGH = 0;
    private int aGI = 0;
    int aGJ = 0;
    private C0166d aGK = null;
    private C0329e aGL = null;
    private int aGM;
    private int aGN;
    private int aGO = getResources().getDimensionPixelSize(R.dimen.dimens_103);
    private int aGP = 4;
    private int aGQ = getResources().getDimensionPixelSize(R.dimen.dimens_103);
    private int aGR;
    private int aGS;
    private int aGT = getResources().getDimensionPixelSize(R.dimen.dimens_25);
    private View[] aGU;
    OnClickListener aGV = new C0169g(this);
    private int aGW = 0;
    private int aGX;
    private int aGY = getResources().getDimensionPixelSize(R.dimen.dimens_25);
    private int aGZ;
    private int aHa = C0616j.aoL();
    private int aHb = C0616j.apG();
    private int aHc = 0;
    private int aHd = 0;

    public C0165c(Context context, View[] viewArr, C0329e c0329e, int i) {
        super(context);
        setWillNotDraw(false);
        this.aGL = c0329e;
        setOrientation(i);
        aWx(viewArr);
    }

    public void aWx(View[] viewArr) {
        int i;
        removeAllViews();
        this.aGU = viewArr;
        for (i = 0; i < this.aGU.length; i++) {
            addView(this.aGU[i]);
            this.aGU[i].setOnClickListener(this.aGV);
        }
        if (this.aGU.length <= 12) {
            this.aGY = getResources().getDimensionPixelSize(R.dimen.dimens_25);
            this.aGT = getResources().getDimensionPixelSize(R.dimen.dimens_15);
            i = getResources().getDimensionPixelSize(R.dimen.dimens_103);
            this.aGS = i;
            this.aGZ = i;
            this.aGQ = i;
            i = getResources().getDimensionPixelSize(R.dimen.dimens_103);
            this.aGR = i;
            this.aGX = i;
            this.aGO = i;
        } else if (this.aGU.length <= 12 || this.aGU.length > 15) {
            this.aGT = getResources().getDimensionPixelSize(R.dimen.dimens_7);
            this.aGY = getResources().getDimensionPixelSize(R.dimen.dimens_11);
            this.aGZ = getResources().getDimensionPixelSize(R.dimen.dimens_84);
            this.aGX = getResources().getDimensionPixelSize(R.dimen.dimens_97);
            this.aGS = getResources().getDimensionPixelSize(R.dimen.dimens_97);
            this.aGR = getResources().getDimensionPixelSize(R.dimen.dimens_84);
            this.aGQ = this.aGZ;
            this.aGO = this.aGX;
        } else {
            this.aGY = getResources().getDimensionPixelSize(R.dimen.dimens_17);
            this.aGT = getResources().getDimensionPixelSize(R.dimen.dimens_4);
            i = getResources().getDimensionPixelSize(R.dimen.dimens_103);
            this.aGS = i;
            this.aGZ = i;
            this.aGQ = i;
            i = getResources().getDimensionPixelSize(R.dimen.dimens_90);
            this.aGR = i;
            this.aGX = i;
            this.aGO = i;
        }
        this.aGM = getResources().getDimensionPixelSize(R.dimen.dimens_8);
        this.aGN = getResources().getDimensionPixelSize(R.dimen.dimens_3);
    }

    public void aWw(C0166d c0166d) {
        this.aGK = c0166d;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.aHb = i3 - i;
        this.aHa = i4 - i2;
        this.aGJ = i3 - this.aGQ;
        aWz(this.aGW);
        for (int i5 = 0; i5 < this.aGU.length; i5++) {
            View view = this.aGU[i5];
            int i6 = ((i5 % this.aGP) * this.aGQ) + this.aGI;
            int i7 = ((i5 / this.aGP) * this.aGO) + this.aHd;
            int i8 = this.aGQ + i6;
            int i9 = this.aGO + i7;
            if (aWy()) {
                view.layout(this.aHb - i8, i7, this.aHb - i6, i9);
            } else {
                view.layout(i6, i7, i8, i9);
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        MeasureSpec.getSize(i);
        MeasureSpec.getSize(i2);
        aWz(this.aGW);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            childAt.measure(MeasureSpec.makeMeasureSpec(this.aGQ, Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(this.aGO, Integer.MIN_VALUE));
            if (this.aGU.length > 15) {
                TextView textView = (TextView) childAt.findViewById(R.id.item_text);
                if (this.aGW == 0 || this.aGW == 180) {
                    textView.setCompoundDrawablePadding(this.aGM);
                } else {
                    textView.setCompoundDrawablePadding(this.aGN);
                }
            }
        }
        setMeasuredDimension(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                if (motionEvent.getY() < ((float) this.aHc) || motionEvent.getY() > ((float) this.aGG)) {
                    return false;
                }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setOrientation(int i) {
        this.aGW = i;
        requestLayout();
    }

    private void aWz(int i) {
        int i2 = 4;
        if (i == 0 || i == 180) {
            if (this.aGU.length <= 15) {
                i2 = 3;
            }
            this.aGP = i2;
            i2 = this.aGY;
            this.aGQ = this.aGZ;
            this.aGO = this.aGX;
        } else {
            if (this.aGU.length > 15) {
                i2 = 5;
            }
            this.aGP = i2;
            i2 = this.aGT;
            this.aGQ = this.aGS;
            this.aGO = this.aGR;
        }
        this.aGI = (this.aHb - (this.aGP * this.aGQ)) / 2;
        int ceil = ((int) Math.ceil((double) (((float) this.aGU.length) / ((float) this.aGP)))) * this.aGO;
        this.aHd = i2 + ((this.aHa - ceil) / 2);
        this.aHc = this.aHd;
        this.aGG = this.aHd + ceil;
        this.aGH = this.aHb;
    }

    private boolean aWy() {
        return getLayoutDirection() == 1;
    }
}
