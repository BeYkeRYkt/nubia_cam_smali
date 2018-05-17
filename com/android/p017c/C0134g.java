package com.android.p017c;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.ui.C0130Y;
import com.android.common.ui.MicroSpurAndDngSeekBar;
import com.android.common.ui.ad;

public class C0134g {
    private int aWF = C0616j.aoT(72);
    private int aWG = -16777216;
    private int aWH = -1;
    private boolean aWI = true;
    private C0329e aWJ;
    private ImageView aWK;
    private TextView aWL;
    private TextView aWM;
    private MicroSpurAndDngSeekBar aWN;
    private LinearLayout aWO;
    private LinearLayout aWP;
    private ad aWQ;
    private String aWR;
    private String aWS;

    public C0134g(View view, C0329e c0329e, C0130Y c0130y) {
        this.aWJ = c0329e;
        this.aWR = bmV(R.string.auto);
        this.aWS = bmV(R.string.pref_camera_interval_pro_entry_0);
        bmW(view);
        this.aWN.qV(c0130y);
    }

    public void bmO() {
        Object[] objArr = new Object[]{this.aWP, this.aWN};
        this.aWQ = new ad(objArr, "translationY", 0.0f, (float) C0616j.aoT(72), 500);
        this.aWQ.rF(new C0140m(this));
    }

    public void bmQ() {
        this.aWQ.release();
        this.aWQ = null;
    }

    public void bmP() {
        this.aWJ.Tc().MT(true);
        this.aWN.rl();
    }

    public void bmU() {
        this.aWO.setVisibility(0);
    }

    public void bmT() {
        this.aWO.setVisibility(8);
    }

    public void bmR() {
        if (this.aWM.getVisibility() != 0) {
            this.aWP.setBackground(null);
            this.aWK.setBackgroundResource(R.drawable.microspur_layout_container_right_unselect);
            this.aWM.setBackgroundResource(R.drawable.microspur_layout_container_middle_unselect);
            this.aWM.setVisibility(0);
            this.aWL.setBackgroundResource(R.drawable.microspur_layout_container_left_select);
            this.aWL.setTextColor(this.aWG);
            this.aWM.setTextColor(this.aWH);
            LayoutParams layoutParams = this.aWK.getLayoutParams();
            layoutParams.width = this.aWF;
            this.aWK.setLayoutParams(layoutParams);
            layoutParams = new LinearLayout.LayoutParams(this.aWL.getLayoutParams());
            layoutParams.width = this.aWF;
            layoutParams.rightMargin = 0;
            this.aWL.setLayoutParams(layoutParams);
        }
    }

    public void bmS() {
        if (this.aWM.getVisibility() != 8) {
            this.aWP.setBackgroundResource(R.drawable.nubia_white_dialog_bg);
            this.aWK.setBackground(null);
            this.aWM.setVisibility(8);
            this.aWL.setBackground(null);
            this.aWL.setTextColor(this.aWH);
            this.aWM.setTextColor(this.aWH);
            int i = this.aWJ.SS().getInt("maf_key", -1);
            this.aWN.qW(new String[]{this.aWR, "30"});
            this.aWN.qX(1, i);
            LayoutParams layoutParams = this.aWK.getLayoutParams();
            layoutParams.width = -2;
            this.aWK.setLayoutParams(layoutParams);
            layoutParams = new LinearLayout.LayoutParams(this.aWL.getLayoutParams());
            layoutParams.width = -2;
            layoutParams.rightMargin = C0616j.aoT(6);
            this.aWL.setLayoutParams(layoutParams);
        }
    }

    private void bmY() {
        if (this.aWM.getVisibility() != 8 && !this.aWN.rk()) {
            this.aWL.setBackgroundResource(R.drawable.microspur_layout_container_left_select);
            this.aWM.setBackgroundResource(R.drawable.microspur_layout_container_middle_unselect);
            this.aWL.setTextColor(this.aWG);
            this.aWM.setTextColor(this.aWH);
            int i = this.aWJ.SS().getInt("maf_key", -1);
            this.aWN.qW(new String[]{this.aWR, "30"});
            this.aWN.qX(1, i);
        }
    }

    private void bmX() {
        if (!this.aWN.rk()) {
            this.aWL.setBackgroundResource(R.drawable.microspur_layout_container_left_unselect);
            this.aWM.setBackgroundResource(R.drawable.microspur_layout_container_middle_select);
            this.aWL.setTextColor(this.aWH);
            this.aWM.setTextColor(this.aWG);
            String string = this.aWJ.SS().getString("pref_camera_interval_pro", "-1");
            this.aWN.qW(new String[]{this.aWS, "60S"});
            this.aWN.qX(0, Integer.parseInt(string));
        }
    }

    private void bmW(View view) {
        this.aWL = (TextView) view.findViewById(R.id.id_microspur_manul_foucs);
        this.aWM = (TextView) view.findViewById(R.id.id_microspur_interval_controller);
        this.aWK = (ImageView) view.findViewById(R.id.id_microspur_arrow_tip);
        this.aWN = (MicroSpurAndDngSeekBar) view.findViewById(R.id.microspur_seekbar);
        this.aWO = (LinearLayout) view.findViewById(R.id.microspur_layout_container);
        this.aWP = (LinearLayout) view.findViewById(R.id.microspur_layout_tag);
        this.aWL.setOnClickListener(new C0141n(this));
        this.aWM.setOnClickListener(new C0142o(this));
        this.aWN.qX(1, -1);
        this.aWP.setOnClickListener(new C0143p(this));
        this.aWN.qW(new String[]{this.aWR, "30"});
    }

    private String bmV(int i) {
        return this.aWJ.SN().getString(i);
    }
}
