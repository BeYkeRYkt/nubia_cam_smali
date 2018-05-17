package com.android.lightpainting;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.p010a.C0090a;

final class C0955p implements OnSeekBarChangeListener {
    final /* synthetic */ C0943d aZB;

    C0955p(C0943d c0943d) {
        this.aZB = c0943d;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        C0090a.bvm("LightDrawFragment", "set light_draw iso");
        this.aZB.aYE = i + 1;
        seekBar.setProgress(i);
        this.aZB.aYG.setText(this.aZB.aYC + "1/" + (i + 1));
    }
}
