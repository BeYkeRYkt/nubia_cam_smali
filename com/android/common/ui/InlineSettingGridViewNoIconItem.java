package com.android.common.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.setting.ListPreference;

public class InlineSettingGridViewNoIconItem extends LinearLayout implements C0474A {
    private TextView uA = null;
    private SeekBar uB = null;
    private LinearLayout uC = null;
    private boolean[] uD = null;
    private int uE = Color.argb(255, 255, 255, 255);
    private int uF = Color.argb(76, 255, 255, 255);
    private int ur = C0616j.aoT(47);
    private SimpleAdapter us = null;
    private C0329e ut = null;
    private boolean uu = true;
    private GridView uv = null;
    private int uw = 3;
    private TextView ux = null;
    private C0767y uy = null;
    private ListPreference uz = null;

    public InlineSettingGridViewNoIconItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        if (this.uz != null) {
            i2 = MeasureSpec.makeMeasureSpec((int) (Math.ceil((double) (((float) this.uz.vb().length) / ((float) this.uw))) * ((double) this.ur)), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.uv = (GridView) findViewById(R.id.gridview);
    }

    public void fc(int i, boolean z) {
        if (i == 0 || i == 180) {
            this.uw = 3;
        } else {
            this.uw = 6;
        }
        if (this.uv != null) {
            this.uv.setNumColumns(this.uw);
        }
        requestLayout();
        this.us.notifyDataSetChanged();
    }
}
