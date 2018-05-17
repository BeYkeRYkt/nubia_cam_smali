package com.android.multiexposure;

import android.content.SharedPreferences.Editor;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.android.camera.R;

public class C0966b implements OnSeekBarChangeListener {
    C0974i alg;

    public C0966b(C0974i c0974i) {
        this.alg = c0974i;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.alg.getResources().getString(R.string.multi_exposure_combination_text);
        this.alg.all.setText(i + "%");
        this.alg.alm.setImageAlpha(((100 - this.alg.aln.getProgress()) * 255) / 100);
        if (this.alg.alo != null) {
            this.alg.alo.setParameter(i);
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        Editor edit = this.alg.awm().SS().edit();
        edit.putInt("multi_exposure_parameter", this.alg.aln.getProgress());
        edit.apply();
    }
}
