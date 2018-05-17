package com.android.common.independentFocusExposure;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;

public class CameraFocusIndicatorView extends View {
    private C0586b NE = null;
    private SparseArray NF = new SparseArray();

    public CameraFocusIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.NE != null && motionEvent.getAction() == 0 && this.NE.Mf().Td().Ns() == CameraExposureService$ExposureIndicatorState.IDLE) {
            this.NE.MV(CameraFocusService$FocusIndicatorState.FOCUSED);
        }
        return false;
    }

    public void Qj(int i) {
        if (this.NF.indexOfKey(i) < 0) {
            this.NF.put(i, getResources().getDrawable(i));
        }
        setBackgroundDrawable((Drawable) this.NF.get(i));
    }

    public void Qi() {
        Qj(R.drawable.ic_focus_metering_focused);
    }

    public void Qh(C0586b c0586b) {
        this.NE = c0586b;
    }
}
