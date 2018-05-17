package com.android.common.p023b;

import android.app.Activity;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.p024d.C0357i;

public class C0358g implements C0357i {
    private Activity Jc;
    private TextView Jd;
    private Toast Je;
    private TextView Jf = null;
    private RelativeLayout Jg = null;

    public C0358g(Activity activity, TextView textView, RelativeLayout relativeLayout) {
        this.Jc = activity;
        this.Jf = textView;
        this.Jg = relativeLayout;
    }

    public void Kr() {
        this.Jf.setText(String.format(this.Jc.getString(R.string.intervalometer_num_unit), new Object[]{Integer.valueOf(0)}));
        this.Jg.setVisibility(0);
    }

    public void Kq(int i) {
        this.Jf.setText(String.format(this.Jc.getString(R.string.intervalometer_num_unit), new Object[]{Integer.valueOf(i)}));
    }

    public void Ks() {
        this.Jg.setVisibility(8);
    }

    public void Kt(int i) {
        this.Jc.runOnUiThread(new C0368p(this, i));
    }
}
