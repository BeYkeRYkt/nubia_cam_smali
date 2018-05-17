package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.p033p.C0690a;

public class CameraAboutView extends LinearLayout implements C0474A {
    private TextView kd = null;
    private C0690a ke = null;
    private TextView kf = null;

    public CameraAboutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnClickListener(new aD(this));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.kf = (TextView) findViewById(R.id.version);
        this.kd = (TextView) findViewById(R.id.check);
        this.kd.setOnClickListener(new aE(this));
    }

    private void il() {
        C0690a.amG().amH(getContext(), false).amI();
    }

    public void fc(int i, boolean z) {
    }
}
