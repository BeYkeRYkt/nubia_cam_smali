package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.setting.ListPreference;

public class SettingsHeader extends LinearLayout {
    private TextView tS = null;
    private TextView tT = null;

    public SettingsHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tT = (TextView) findViewById(R.id.item_text);
        this.tS = (TextView) findViewById(R.id.setting_divider_top);
    }

    public void rq(ListPreference listPreference) {
        this.tT.setText(listPreference.zq());
    }

    public void rr() {
        this.tS.setVisibility(0);
    }
}
