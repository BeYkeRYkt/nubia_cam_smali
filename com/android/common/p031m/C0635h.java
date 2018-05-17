package com.android.common.p031m;

import android.view.MotionEvent;
import com.android.common.ActivityBase;

public class C0635h implements C0631d {
    private ActivityBase aaX;

    public C0635h(ActivityBase activityBase) {
        this.aaX = activityBase;
    }

    public boolean ahz(float f, float f2) {
        return this.aaX.ase((int) (f + 0.5f), (int) (0.5f + f2));
    }

    public void ahu(float f, float f2) {
        this.aaX.atX((int) (f + 0.5f), (int) (0.5f + f2));
    }

    public boolean ahs(float f, float f2) {
        return false;
    }

    public boolean ahy(float f, float f2, float f3, float f4) {
        return this.aaX.aue(f, f2, f3, f4);
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return this.aaX.onFling(motionEvent, motionEvent2, f, f2);
    }

    public boolean ahw(float f, float f2) {
        return false;
    }

    public boolean ahv(float f, float f2, float f3) {
        return false;
    }

    public void ahx() {
    }

    public void aht(float f, float f2) {
    }

    public void ahA() {
    }
}
