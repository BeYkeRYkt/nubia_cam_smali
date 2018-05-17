package com.android.common.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.setting.ListPreference;

public class SettingMainItem extends RelativeLayout {
    private int sX = Color.argb(138, 255, 255, 255);
    private int sY = Color.argb(255, 255, 255, 255);
    private C0329e sZ = null;
    private ImageView ta = null;
    private ListPreference tb = null;
    private TextView tc = null;
    private ImageView td = null;

    public SettingMainItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tc = (TextView) findViewById(R.id.item_text);
        this.ta = (ImageView) findViewById(R.id.item_icon);
        this.td = (ImageView) findViewById(R.id.small_triangle);
    }
}
