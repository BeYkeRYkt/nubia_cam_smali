package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.setting.ExtraListPreference;
import com.android.common.setting.ListPreference;

public class ZtemtInlineSettingSwitch extends LinearLayout {
    private TextView sA = null;
    private TextView sB = null;
    private ListPreference sx;
    private C0348Q sy = null;
    private MySwitch sz = null;

    public ZtemtInlineSettingSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void qj(C0348Q c0348q) {
        this.sy = c0348q;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.sA = (TextView) findViewById(R.id.title);
        this.sB = (TextView) findViewById(R.id.title2);
        this.sz = (MySwitch) findViewById(R.id.setting_switch);
    }

    public void qi(ListPreference listPreference) {
        boolean z = true;
        this.sx = listPreference;
        this.sA.setText(this.sx.zq());
        if (listPreference instanceof ExtraListPreference) {
            this.sB.setText(((ExtraListPreference) listPreference).vL());
            this.sB.setVisibility(0);
        } else {
            this.sB.setVisibility(8);
        }
        this.sz.setClickable(true);
        MySwitch mySwitch = this.sz;
        if (this.sx.uW(this.sx.tw()) != 1) {
            z = false;
        }
        mySwitch.setChecked(z);
        this.sz.setOnCheckedChangeListener(new C0740R());
    }

    public void qk() {
        if (this.sz != null) {
            this.sz.setChecked(!this.sz.isChecked());
        }
    }
}
