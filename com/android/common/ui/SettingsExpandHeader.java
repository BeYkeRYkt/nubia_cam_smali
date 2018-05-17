package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0700r;
import com.android.common.setting.ListPreference;

public class SettingsExpandHeader extends RelativeLayout {
    private TextView sv = null;
    private TextView sw = null;

    public SettingsExpandHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.sv = (TextView) findViewById(R.id.setting_expand_title);
        this.sw = (TextView) findViewById(R.id.setting_expand_value);
    }

    public void qh(ListPreference listPreference) {
        this.sv.setText(listPreference.zq());
        if ("pref_picture_artist_info".equals(listPreference.vd())) {
            CharSequence tw = listPreference.tw();
            TextView textView = this.sw;
            if (tw == null) {
                tw = "";
            }
            textView.setText(tw);
        } else {
            this.sw.setText(listPreference.uZ());
        }
        if (listPreference.vd().equals("pref_camera_storage_path") && !C0700r.aqU()) {
            this.sw.setText(getContext().getString(R.string.sdcard_not_insert));
        }
    }
}
