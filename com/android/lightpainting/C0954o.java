package com.android.lightpainting;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.p010a.C0090a;

final class C0954o implements OnSeekBarChangeListener {
    final /* synthetic */ C0943d aZA;

    C0954o(C0943d c0943d) {
        this.aZA = c0943d;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        C0090a.bvm("LightDrawFragment", "set number wanted");
        this.aZA.aYV = i;
        seekBar.setProgress(i);
        this.aZA.aYW.setText(this.aZA.aZn + i);
    }
}
