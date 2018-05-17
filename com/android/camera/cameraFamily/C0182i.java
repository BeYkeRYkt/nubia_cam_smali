package com.android.camera.cameraFamily;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.android.common.camerastate.UIState;

class C0182i implements OnTouchListener {
    private int aGc;
    private int aGd;
    private int aGe;
    private int aGf;
    final /* synthetic */ C0181h aGg;

    private C0182i(C0181h c0181h) {
        this.aGg = c0181h;
        this.aGe = 0;
        this.aGf = 0;
        this.aGc = 0;
        this.aGd = 0;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.aGe = (int) motionEvent.getX();
                this.aGf = (int) motionEvent.getY();
                break;
            case 1:
            case 3:
                boolean z = (this.aGg.alq() != UIState.CAMERA_FAMILY || Math.abs(this.aGc) >= 50 || Math.abs(this.aGd) >= 50 || this.aGg.aFC || this.aGg.adA.SO()) ? false : !this.aGg.aVg();
                if (z) {
                    this.aGg.aFC = true;
                    this.aGg.aVz();
                    this.aGg.aFC = false;
                    break;
                }
                break;
            case 2:
                this.aGc = ((int) motionEvent.getX()) - this.aGe;
                this.aGd = ((int) motionEvent.getY()) - this.aGf;
                break;
        }
        return true;
    }
}
