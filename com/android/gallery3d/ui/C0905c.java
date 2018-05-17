package com.android.gallery3d.ui;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

class C0905c {
    private int aqu;
    private int aqv = -1;
    private ValueAnimator aqw = new ValueAnimator();
    private View aqx;
    private RectF aqy = new RectF();

    public C0905c(int i, View view, AnimatorUpdateListener animatorUpdateListener) {
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        this.aqu = i;
        this.aqx = view;
        this.aqw.addUpdateListener(animatorUpdateListener);
    }

    public int aDr() {
        return this.aqu;
    }

    public void aDG(int i) {
        this.aqu = i;
    }

    public void aDH(int i) {
        this.aqv = i;
    }

    public int aDs() {
        return this.aqv;
    }

    public float aDu(float f) {
        return this.aqx.getTranslationY() / f;
    }

    public float aDt(float f) {
        return this.aqx.getTranslationX() / f;
    }

    public float aDv() {
        return this.aqx.getTranslationX();
    }

    public float aDw() {
        return this.aqx.getTranslationY();
    }

    public void aDJ(float f, float f2) {
        this.aqx.setTranslationY(f * f2);
    }

    public void aDI(float f, float f2) {
        this.aqx.setTranslationX(f * f2);
    }

    public void aDn(float f, long j, TimeInterpolator timeInterpolator) {
        this.aqw.setInterpolator(timeInterpolator);
        this.aqw.setDuration(j);
        this.aqw.setFloatValues(new float[]{this.aqx.getTranslationX(), f});
        this.aqw.start();
    }

    public void aDK(float f, float f2) {
        this.aqx.setTranslationX(this.aqx.getTranslationX() + (f * f2));
    }

    public int aDq() {
        return this.aqv + (this.aqx.getMeasuredWidth() / 2);
    }

    public View aDx() {
        return this.aqx;
    }

    public float aDA() {
        return this.aqx.getX();
    }

    public float aDB() {
        return this.aqx.getY();
    }

    private void aDC(int i, int i2) {
        this.aqx.layout(i, i2, this.aqx.getMeasuredWidth() + i, this.aqx.getMeasuredHeight() + i2);
    }

    public RectF aDy() {
        RectF rectF = new RectF();
        rectF.left = this.aqx.getX();
        rectF.top = this.aqx.getY();
        rectF.right = rectF.left + (((float) this.aqx.getWidth()) * this.aqx.getScaleX());
        rectF.bottom = rectF.top + (((float) this.aqx.getHeight()) * this.aqx.getScaleY());
        return rectF;
    }

    public void aDD(Rect rect, int i, float f) {
        aDC((int) ((((this.aqw.isRunning() ? ((Float) this.aqw.getAnimatedValue()).floatValue() : 0.0f) + ((float) (this.aqv - i))) * f) + ((float) rect.centerX())), (int) (((float) rect.centerY()) - (((float) (this.aqx.getMeasuredHeight() / 2)) * f)));
        this.aqx.setScaleX(f);
        this.aqx.setScaleY(f);
        int left = this.aqx.getLeft();
        int top = this.aqx.getTop();
        this.aqy.set((float) left, (float) top, ((float) left) + (((float) this.aqx.getMeasuredWidth()) * f), ((float) top) + (((float) this.aqx.getMeasuredHeight()) * f));
    }

    public boolean aDo(float f, float f2) {
        return this.aqy.contains(f, f2);
    }

    public int aDz() {
        return this.aqx.getWidth();
    }

    public void aDp(C0905c c0905c) {
        aDH(c0905c.aDs());
        View aDx = c0905c.aDx();
        this.aqx.setTranslationY(aDx.getTranslationY());
        this.aqx.setTranslationX(aDx.getTranslationX());
    }

    void aDE(float f, float f2, float f3, int i, int i2) {
        float aDv = aDv();
        aDL(aDv - ((f - aDA()) * (f3 - 1.0f)), aDw() - ((f2 - aDB()) * (f3 - 1.0f)), this.aqx.getScaleX() * f3, this.aqx.getScaleY() * f3, i, i2);
    }

    void aDL(float f, float f2, float f3, float f4, int i, int i2) {
        float left = ((float) this.aqx.getLeft()) + f;
        float top = ((float) this.aqx.getTop()) + f2;
        RectF aEW = C0917o.aEW(new RectF(left, top, (((float) this.aqx.getWidth()) * f3) + left, (((float) this.aqx.getHeight()) * f4) + top), i, i2);
        this.aqx.setScaleX(f3);
        this.aqx.setScaleY(f4);
        top = aEW.left - ((float) this.aqx.getLeft());
        left = aEW.top - ((float) this.aqx.getTop());
        this.aqx.setTranslationX(top);
        this.aqx.setTranslationY(left);
    }

    void aDF() {
        this.aqx.setScaleX(1.0f);
        this.aqx.setScaleY(1.0f);
        this.aqx.setTranslationX(0.0f);
        this.aqx.setTranslationY(0.0f);
        if (this.aqx instanceof C0912i) {
            ((C0912i) this.aqx).aEU(null, null);
        }
    }

    public String toString() {
        return "DataID = " + this.aqu + "\n\t left = " + this.aqv + "\n\t viewArea = " + this.aqy + "\n\t centerX = " + aDq() + "\n\t view MeasuredSize = " + this.aqx.getMeasuredWidth() + ',' + this.aqx.getMeasuredHeight() + "\n\t view Size = " + this.aqx.getWidth() + ',' + this.aqx.getHeight() + "\n\t view scale = " + this.aqx.getScaleX();
    }
}
