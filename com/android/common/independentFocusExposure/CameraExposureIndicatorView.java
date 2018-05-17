package com.android.common.independentFocusExposure;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;

public class CameraExposureIndicatorView extends View {
    private C0592h Mh = null;
    private SparseArray Mi = new SparseArray();

    public CameraExposureIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.Mh != null && motionEvent.getAction() == 0) {
            this.Mh.Or(CameraExposureService$ExposureIndicatorState.FOCUSED);
        }
        return false;
    }

    public void OG(int i) {
        if (this.Mi.indexOfKey(i) < 0) {
            this.Mi.put(i, getResources().getDrawable(i));
        }
        setBackgroundDrawable((Drawable) this.Mi.get(i));
    }

    public void OF() {
        OG(R.drawable.ic_focus_metering_exposure);
    }

    public void OE(C0592h c0592h) {
        this.Mh = c0592h;
    }
}
