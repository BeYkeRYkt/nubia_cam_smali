package com.android.common.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;

public class VerticalSeekBarForEv extends SeekBar {
    private boolean it = true;
    private C0329e iu;

    public VerticalSeekBarForEv(Context context) {
        super(context);
    }

    public VerticalSeekBarForEv(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        gD(context, attributeSet);
    }

    public VerticalSeekBarForEv(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        gD(context, attributeSet);
    }

    private void gD(Context context, AttributeSet attributeSet) {
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.it) {
            super.onSizeChanged(i2, i, i4, i3);
        } else {
            super.onSizeChanged(i, i2, i3, i4);
        }
    }

    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i2, i);
        if (this.it) {
            setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    protected synchronized void onDraw(Canvas canvas) {
        if (this.it) {
            canvas.rotate(-90.0f);
            canvas.translate((float) (-getHeight()), 0.0f);
        }
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.it) {
            return super.onTouchEvent(motionEvent);
        }
        if (!isEnabled()) {
            return false;
        }
        if (!C0421M.dC().dD().bU() && this.iu.SY().tx()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
            case 1:
            case 2:
                Editor edit;
                int max = getMax() - ((int) ((((float) getMax()) * motionEvent.getY()) / ((float) getHeight())));
                setProgress(max);
                setProgressDrawable(this.iu.SN().getResources().getDrawable(R.drawable.ev_seek_bar_bg_rotate));
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                if (motionEvent.getAction() == 2 && max >= 0 && max <= getMax() && max % (getMax() / 24) == 0) {
                    edit = gE().edit();
                    edit.putString("pref_camera_exposure_key", Integer.toString((max / (getMax() / 24)) - 12));
                    edit.apply();
                    this.iu.SZ(8);
                }
                if (motionEvent.getAction() == 1) {
                    max = C0616j.aoN(max, 0, getMax());
                    edit = gE().edit();
                    edit.putString("pref_camera_exposure_key", Integer.toString((max / (getMax() / 24)) - 12));
                    edit.apply();
                    this.iu.SZ(8);
                    break;
                }
                break;
        }
        return true;
    }

    public void gF(C0329e c0329e) {
        this.iu = c0329e;
        setMax(288);
        setProgress(getMax() / 2);
    }

    public void gG() {
        onSizeChanged(getWidth(), getHeight(), 0, 0);
    }

    private SharedPreferences gE() {
        return this.iu.SS();
    }
}
