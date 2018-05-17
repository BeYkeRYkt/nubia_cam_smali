package com.android.common;

import android.content.SharedPreferences.Editor;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.p010a.C0090a;

class C0769v implements OnSeekBarChangeListener {
    final /* synthetic */ C0726t aiv;

    private C0769v(C0726t c0726t) {
        this.aiv = c0726t;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        C0090a.bvm(this.aiv.TAG, "set number wanted");
        this.aiv.ain.setProgress(i);
        this.aiv.aim.setText(i + "");
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        Editor edit = this.aiv.ais.edit();
        edit.putString("pref_camera_interval_pro", this.aiv.ain.getProgress() + "");
        edit.apply();
    }
}
