package com.android.clone;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.p010a.C0090a;

class C0246h implements OnTouchListener {
    final /* synthetic */ C0244f aoq;

    private C0246h(C0244f c0244f) {
        this.aoq = c0244f;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.aoq.anS && this.aoq.mState == 2 && !this.aoq.anZ) {
            switch (motionEvent.getAction() & 255) {
                case 0:
                    this.aoq.ayz();
                    this.aoq.aok = motionEvent.getX();
                    this.aoq.aol = motionEvent.getY();
                    this.aoq.ayY();
                    if (motionEvent.getPointerCount() > 1) {
                        this.aoq.anX = true;
                    } else {
                        this.aoq.anX = false;
                    }
                    this.aoq.aop = System.currentTimeMillis();
                    C0090a.bvo("CloneViewManager", "ACTION_DOWN mIsScale = " + this.aoq.anX);
                    break;
                case 1:
                    C0090a.bvo("CloneViewManager", "ACTION_UP");
                    if (!this.aoq.anX) {
                        if (this.aoq.anT) {
                            this.aoq.aym();
                        } else {
                            this.aoq.ays();
                        }
                    }
                    this.aoq.aok = 0.0f;
                    this.aoq.aol = 0.0f;
                    this.aoq.azb();
                    this.aoq.ayB();
                    this.aoq.ayV();
                    this.aoq.anX = false;
                    this.aoq.anV = false;
                    break;
                case 2:
                    float blw = this.aoq.ang.blw();
                    float blx = this.aoq.ang.blx();
                    int bly = this.aoq.ang.bly();
                    int blz = this.aoq.ang.blz();
                    if (!this.aoq.anX && System.currentTimeMillis() - this.aoq.aop > 100) {
                        if (this.aoq.anT) {
                            this.aoq.amX.drawLine((this.aoq.aok * blw) + ((float) bly), (this.aoq.aol * blx) + ((float) blz), (blw * motionEvent.getX()) + ((float) bly), (blx * motionEvent.getY()) + ((float) blz), this.aoq.amY);
                            this.aoq.ank.setBackground(new BitmapDrawable(this.aoq.anc.getResources(), this.aoq.anj));
                            this.aoq.anV = true;
                        } else {
                            this.aoq.anh.setVisibility(0);
                            this.aoq.ant.setXfermode(new PorterDuffXfermode(Mode.SRC));
                            this.aoq.ans.drawLine((this.aoq.aok * blw) + ((float) bly), (this.aoq.aol * blx) + ((float) blz), (blw * motionEvent.getX()) + ((float) bly), (blx * motionEvent.getY()) + ((float) blz), this.aoq.ant);
                            this.aoq.anh.setBackground(new BitmapDrawable(this.aoq.anc.getResources(), this.aoq.anf));
                            this.aoq.anV = true;
                        }
                    }
                    this.aoq.aok = motionEvent.getX();
                    this.aoq.aol = motionEvent.getY();
                    this.aoq.ayY();
                    break;
                case 5:
                    if (System.currentTimeMillis() - this.aoq.aop < 100) {
                        this.aoq.anX = true;
                    }
                    C0090a.bvo("CloneViewManager", "ACTION_POINTER_1_DOWN mIsScale = " + this.aoq.anX + "; uesTime = " + (System.currentTimeMillis() - this.aoq.aop));
                    break;
            }
            if (!(this.aoq.ang == null || this.aoq.anV)) {
                this.aoq.ang.blL(motionEvent);
            }
            return true;
        }
        C0090a.bvo("CloneViewManager", "mIsCanDraw = " + this.aoq.anS + "; mState = " + this.aoq.mState + "; mIsWaiting = " + this.aoq.anZ);
        return false;
    }
}
