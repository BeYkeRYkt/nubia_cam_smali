package com.android.common.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.android.common.C0616j;

public class ag implements OnTouchListener {
    private OnSeekBarChangeListener uK;
    private int[] uL;
    private SeekBar uM;

    public ag(View view, SeekBar seekBar, OnSeekBarChangeListener onSeekBarChangeListener) {
        this.uM = seekBar;
        this.uK = onSeekBarChangeListener;
        this.uL = C0616j.apH(view, seekBar);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.uM == null || !this.uM.isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.uK.onStartTrackingTouch(this.uM);
                break;
            case 1:
            case 3:
                this.uK.onStopTrackingTouch(this.uM);
                break;
            case 2:
                int max = (this.uM.getMax() * C0616j.aoN(((int) motionEvent.getX()) - this.uL[0], 0, this.uM.getWidth())) / this.uM.getWidth();
                if (!C0616j.ahp) {
                    this.uM.setProgress(max);
                    break;
                }
                this.uM.setProgress(this.uM.getMax() - max);
                break;
        }
        return true;
    }
}
