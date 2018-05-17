package com.android.common.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0375c;
import com.android.common.C0456d;
import com.p010a.C0090a;

public class C0764t implements C0456d {
    private int mState;
    private ImageView of;
    private RelativeLayout og;
    private LinearLayout oh;
    private TextView oi;
    private String oj;
    private TextView ok;
    private C0375c ol;

    public C0764t(View view) {
        this.og = null;
        this.of = null;
        this.ok = null;
        this.oh = null;
        this.oi = null;
        this.ol = null;
        this.oj = null;
        this.mState = 0;
        this.ol = new C0375c(400, this);
        lr(view);
    }

    private void lr(View view) {
        this.og = (RelativeLayout) view.findViewById(R.id.nubia_timing_layout);
        this.of = (ImageView) view.findViewById(R.id.recording_icon);
        this.ok = (TextView) view.findViewById(R.id.recording_time);
        this.oh = (LinearLayout) view.findViewById(R.id.recording_max_time_layout);
        this.oi = (TextView) view.findViewById(R.id.recording_max_time);
    }

    public void ln() {
        this.mState = 1;
        this.of.setBackgroundResource(R.drawable.nubia_timing_play);
        lv();
        if (this.ol != null) {
            this.ol.start();
        }
    }

    public void lo(String str) {
        this.ok.setText(str);
    }

    public void lu(String str) {
        this.oj = str;
        if (this.oj == null) {
            this.oh.setVisibility(8);
            return;
        }
        this.oh.setVisibility(0);
        this.oi.setText(this.oj);
    }

    public String lp() {
        return this.oj;
    }

    public void lt() {
        this.mState = 2;
        if (this.ol != null && this.ol.aol()) {
            this.ol.aok();
        }
        this.of.setBackgroundResource(R.drawable.nubia_timing_pause);
        this.of.setVisibility(0);
    }

    public void stop() {
        this.mState = 0;
        if (this.ol != null && this.ol.aol()) {
            this.ol.aok();
        }
        lq();
    }

    public boolean lm() {
        return this.mState == 1;
    }

    private void lv() {
        this.og.setVisibility(0);
        this.of.setVisibility(0);
        this.ok.setVisibility(0);
    }

    private void lq() {
        this.og.setVisibility(8);
        this.of.setVisibility(8);
        this.ok.setVisibility(8);
    }

    public void onTick(long j) {
    }

    public void ls() {
        if (this.of == null) {
            C0090a.m1e("NubiaTimingShow", "onInterval() mIconView is null!");
        } else if (this.mState != 1) {
            C0090a.m1e("NubiaTimingShow", "onInterval() mState = " + this.mState);
        } else {
            if (this.of.getVisibility() == 0) {
                this.of.setVisibility(4);
            } else {
                this.of.setVisibility(0);
            }
        }
    }
}
