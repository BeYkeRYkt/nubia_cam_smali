package com.android.common.independentFocusExposure;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;
import com.android.common.custom.C0421M;

public class MwbIndicatorView extends View {
    private SparseArray NG = new SparseArray();
    private C0598n NH = null;

    public MwbIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!(motionEvent.getAction() != 0 || Qm() || Qn())) {
            this.NH.PH(MwbService$WbIndicatorState.FOCUSED);
            this.NH.Px();
            if (C0421M.dC().dD().bD()) {
                this.NH.Pq();
                this.NH.Pf();
            }
        }
        return false;
    }

    public void Ql(int i) {
        if (this.NG.indexOfKey(i) < 0) {
            this.NG.put(i, getResources().getDrawable(i));
        }
        setBackgroundDrawable((Drawable) this.NG.get(i));
    }

    public void OF() {
        Ql(R.drawable.ic_mwb);
    }

    public void Qk(C0598n c0598n) {
        this.NH = c0598n;
    }

    private boolean Qm() {
        return this.NH.Pi().Td().Ns() == CameraExposureService$ExposureIndicatorState.FOCUSED;
    }

    private boolean Qn() {
        return this.NH.Pi().Tc().LF() == CameraFocusService$FocusIndicatorState.FOCUSED;
    }
}
