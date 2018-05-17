package com.android.common.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.setting.IconListPreference;

public class InlineSettingGridViewItem extends LinearLayout implements C0474A {
    private int wA = C0616j.aoT(59);
    private int wB = C0616j.aoT(7);
    private int wC = C0616j.aoT(45);
    private SimpleAdapter wD = null;
    private C0329e wE = null;
    private GridView wF = null;
    private ImageView wG = null;
    private int wH = 4;
    private C0767y wI = null;
    private IconListPreference wJ = null;
    private TextView wK = null;
    private boolean[] wL = null;
    private int wM = Color.argb(255, 255, 255, 255);
    private int wN = Color.argb(76, 255, 255, 255);

    public InlineSettingGridViewItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        if (this.wJ != null) {
            i2 = MeasureSpec.makeMeasureSpec(((int) (Math.ceil((double) (((float) this.wJ.vb().length) / ((float) this.wH))) * ((double) this.wA))) + (this.wB * 2), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.wF = (GridView) findViewById(R.id.gridview);
    }

    public void fc(int i, boolean z) {
        if (i == 0 || i == 180) {
            this.wH = 4;
        } else {
            this.wH = 7;
        }
        if (this.wF != null) {
            this.wF.setNumColumns(this.wH);
        }
        requestLayout();
        this.wD.notifyDataSetChanged();
    }
}
