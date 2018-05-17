package com.android.trajectory;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class C1137l implements OnSeekBarChangeListener {
    final /* synthetic */ C1127b bbP;

    C1137l(C1127b c1127b) {
        this.bbP = c1127b;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int i2 = (i + 1) * 10;
        this.bbP.brL("capture_interval", i2);
        this.bbP.bbz.aWO(i2);
        this.bbP.baG.setProgress(i);
        this.bbP.baH.setText(this.bbP.brs(i2));
    }
}
