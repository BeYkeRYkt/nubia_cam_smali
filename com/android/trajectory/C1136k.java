package com.android.trajectory;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class C1136k implements OnSeekBarChangeListener {
    final /* synthetic */ C1127b bbO;

    C1136k(C1127b c1127b) {
        this.bbO = c1127b;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int i2 = this.bbO.baK[i];
        this.bbO.brL("capture_number", i);
        this.bbO.brN(i2);
        this.bbO.bbz.aWN(i2);
        this.bbO.baO.setProgress(i);
        this.bbO.baP.setText(this.bbO.brt(i2));
    }
}
