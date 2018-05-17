package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.camera.R;
import com.android.common.setting.ListPreference;

public class InlineSettingIntervalItem extends LinearLayout implements C0474A {
    private C0755f jA = null;
    private ListPreference jB = null;
    private WheelView jC = null;
    private String jx;
    private CharSequence[] jy = null;
    private int jz = 9;

    public InlineSettingIntervalItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.jx = context.getString(R.string.pref_camera_interval_pro_off);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.jC = (WheelView) findViewById(R.id.seek_bar);
    }

    public void fc(int i, boolean z) {
        if (i == 0 || i == 180) {
            this.jz = 9;
        } else {
            this.jz = 11;
        }
        if (this.jC != null) {
            this.jC.st(this.jz);
        }
    }
}
