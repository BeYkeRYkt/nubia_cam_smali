package com.android.pretty;

import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.ui.ad;
import com.p010a.C0090a;

public class C1075e implements C1074o {
    private int asO;
    private int asP = -16777216;
    private int asQ = -1;
    private int asR;
    private C1076f asS = new C1076f();
    private C0329e asT;
    private ImageView asU;
    private WaterDropSeekbar asV;
    private TextView asW;
    private C1078h asX;
    private int asY;
    private LinearLayout asZ;
    private boolean ata;
    private boolean atb;
    private int atc;
    private ad atd;
    private int ate;
    private int atf;
    private View atg;
    private WaterDropSeekbar ath;
    private TextView ati;
    private int atj;
    private C1051n atk;

    public C1075e(C0329e c0329e) {
        this.asT = c0329e;
        this.asO = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_60);
        this.asR = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_67);
        this.atc = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_22);
        this.atj = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_33);
        this.asY = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_10);
        this.ate = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_25);
        this.atf = this.asT.SN().getResources().getDimensionPixelSize(R.dimen.dimens_20);
    }

    public void aGK(C1051n c1051n) {
        this.atk = c1051n;
    }

    private boolean aGF() {
        if (this.ata && this.atg.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!aGF()) {
            return false;
        }
        C0090a.bvo("PortraitPrettySettingLayout", "Setting animating, prettyFrament consume the TouchEvent");
        return true;
    }

    public void setVisibility(int i) {
        this.atg.setVisibility(i);
    }

    public void aGI() {
        aGN();
        if (this.atg.getVisibility() == 8) {
            aGx();
        }
        if (aGH()) {
            this.asX.aHo(true);
        } else {
            this.atk.aIs(0, 0, 0);
        }
    }

    public void aGE(ViewGroup viewGroup) {
        LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.portrait_pretty_setting_layout, viewGroup, true);
        aGC(viewGroup);
        aGB(viewGroup);
        aGA(viewGroup);
        aGD(viewGroup);
        aGz(this.atg);
        aGO();
    }

    private void aGO() {
        boolean aGH = aGH();
        boolean aGG = aGG();
        if (aGH && aGG) {
            this.ati.post(aGy("PrettyTabButton", this.ati, this.asY, 0, this.asY, this.asY));
            this.asW.post(aGy("BokehTabButton", this.asW, 0, 0, this.asY, this.asY));
            this.asU.post(aGy("ArrowTab", this.asU, 0, this.asY, this.asY, this.asY));
        } else if (aGH) {
            this.ati.post(aGy("PrettyTabButton", this.ati, this.atf, 0, this.asY, this.asY));
            this.asU.post(aGy("ArrowTab", this.asU, 0, this.ate, this.ate, this.ate));
        } else if (aGG) {
            this.asW.post(aGy("BokehTabButton", this.asW, this.atf, 0, this.asY, this.asY));
            this.asU.post(aGy("ArrowTab", this.asU, 0, this.ate, this.ate, this.ate));
        }
    }

    public void aGN() {
        boolean z = true;
        boolean aGH = aGH();
        boolean aGG = aGG();
        C0090a.bvo("PortraitPrettySettingLayout", "PrettySwitchOn: " + aGH + ", BokehLevelOn: " + aGG);
        if (aGH && aGG) {
            if (this.atg.getVisibility() != 0 || this.asW.getVisibility() != 0 || this.ati.getVisibility() != 0) {
                boolean z2;
                this.atg.setVisibility(0);
                if (aGH && this.ati.getVisibility() == 8) {
                    this.ath.setVisibility(0);
                    this.asV.setVisibility(8);
                    z2 = true;
                    z = false;
                } else if (aGG && this.asW.getVisibility() == 8) {
                    this.ath.setVisibility(8);
                    this.asV.setVisibility(0);
                    z2 = false;
                } else {
                    z = false;
                    z2 = false;
                }
                this.asW.setVisibility(0);
                this.ati.setVisibility(0);
                aGM(this.ati, this.asW, this.asU, this.asZ, z2, z);
            } else {
                return;
            }
        } else if (aGH) {
            if (this.atg.getVisibility() != 0 || this.asW.getVisibility() != 8 || this.ati.getVisibility() != 0 || this.ath.getVisibility() != 0) {
                this.atg.setVisibility(0);
                this.asW.setVisibility(8);
                this.asV.setVisibility(8);
                this.ath.setVisibility(0);
                this.ati.setVisibility(0);
                aGL(this.ati, this.asU, this.asZ);
            } else {
                return;
            }
        } else if (!aGG) {
            this.atg.setVisibility(8);
        } else if (this.atg.getVisibility() != 0 || this.asW.getVisibility() != 0 || this.ati.getVisibility() != 8 || this.asV.getVisibility() != 0) {
            this.atg.setVisibility(0);
            this.ati.setVisibility(8);
            this.ath.setVisibility(8);
            this.asV.setVisibility(0);
            this.asW.setVisibility(0);
            aGL(this.asW, this.asU, this.asZ);
        } else {
            return;
        }
        aGO();
    }

    private void aGL(TextView textView, ImageView imageView, LinearLayout linearLayout) {
        linearLayout.setBackgroundResource(R.drawable.nubia_white_dialog_bg);
        imageView.setBackground(null);
        textView.setBackground(null);
        textView.setTextColor(this.asQ);
        LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = -2;
        imageView.setLayoutParams(layoutParams);
        textView.setPaddingRelative(0, 0, C0616j.aoT(6), 0);
        layoutParams = new LinearLayout.LayoutParams(textView.getLayoutParams());
        layoutParams.width = -2;
        textView.setLayoutParams(layoutParams);
    }

    private void aGM(TextView textView, TextView textView2, ImageView imageView, LinearLayout linearLayout, boolean z, boolean z2) {
        int i;
        linearLayout.setBackground(null);
        if (z2) {
            i = R.drawable.microspur_layout_container_middle_select;
        } else {
            i = R.drawable.microspur_layout_container_middle_unselect;
        }
        textView2.setBackgroundResource(i);
        if (z) {
            i = R.drawable.microspur_layout_container_left_select;
        } else {
            i = R.drawable.microspur_layout_container_left_unselect;
        }
        textView.setBackgroundResource(i);
        textView.setTextColor(z ? this.asP : this.asQ);
        textView2.setTextColor(z2 ? this.asP : this.asQ);
        imageView.setBackgroundResource(R.drawable.microspur_layout_container_right_unselect);
        LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = this.asO;
        imageView.setLayoutParams(layoutParams);
        textView.setPaddingRelative(C0616j.aoT(1), 0, 0, 0);
        layoutParams = new LinearLayout.LayoutParams(textView.getLayoutParams());
        layoutParams.width = this.asO;
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        textView.setLayoutParams(layoutParams);
        textView2.setPaddingRelative(0, 0, 0, 0);
        layoutParams = new LinearLayout.LayoutParams(textView2.getLayoutParams());
        layoutParams.width = this.asO;
        layoutParams.leftMargin = 0;
        layoutParams.rightMargin = 0;
        textView2.setLayoutParams(layoutParams);
    }

    private Runnable aGy(String str, View view, int i, int i2, int i3, int i4) {
        return new C1092y(this, view, i3, i4, i, i2, str);
    }

    private boolean aGH() {
        return "on".equals(this.asT.SS().getString("pref_pretty_switch", "off"));
    }

    private boolean aGG() {
        return "on".equals(this.asT.SS().getString("pref_bokeh_level_adjustable", "off"));
    }

    private void aGC(View view) {
        this.ati = (TextView) view.findViewById(R.id.pretty_handler_text);
        this.ath = (WaterDropSeekbar) view.findViewById(R.id.pretty_seekbar);
        this.ati.setOnClickListener(new C1093z(this));
        this.asX = new C1078h(this.asT.SN(), view, this.asT.SS(), new C1052A(this));
    }

    private void aGB(View view) {
        this.asW = (TextView) view.findViewById(R.id.bokeh_handler_text);
        this.asV = (WaterDropSeekbar) view.findViewById(R.id.bokeh_seekbar);
        this.asW.setOnClickListener(new C1053B(this));
        this.asV.aGo(this.asS.aHh());
        this.asV.aGm(this.asS.aHf(2.0f));
        this.asV.aGn(this.asS.aHm());
        this.asV.aGp(new C1055C(this));
        this.asV.aGq(new C1057D(this));
    }

    private void aGA(View view) {
        this.asU = (ImageView) view.findViewById(R.id.handler_arrow);
        this.asU.setOnClickListener(new C1058E(this));
    }

    private void aGJ() {
        if (this.atb) {
            this.atd.start();
            this.ata = true;
            return;
        }
        this.atd.rE();
        this.ata = true;
    }

    private void aGx() {
        if (this.atb) {
            this.atg.setTranslationY((float) this.asR);
            this.atb = false;
        }
    }

    private void aGD(View view) {
        this.atg = view.findViewById(R.id.pretty_high_settings);
        this.asZ = (LinearLayout) view.findViewById(R.id.handler);
        this.asZ.addOnLayoutChangeListener(new C1059F(this));
    }

    private void aGz(View view) {
        this.atd = new ad(new View[]{view}, "translationY", 0.0f, (float) this.asR, 500);
        this.atd.rF(new C1060G(this));
    }
}
