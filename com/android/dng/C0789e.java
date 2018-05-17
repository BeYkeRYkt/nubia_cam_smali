package com.android.dng;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.setting.IconListPreference;
import com.android.common.ui.C0474A;
import com.android.common.ui.MicroSpurAndDngSeekBar;
import com.android.common.ui.ad;
import java.util.ArrayList;
import java.util.HashMap;

public class C0789e implements C0474A {
    private IconListPreference aMA;
    private C0790f aMB;
    private String aMC;
    private GridView aMD;
    private View aME;
    private TextView aMF;
    private boolean aMG = false;
    private int aMj = C0616j.aoT(72);
    private int aMk = -16777216;
    private int aMl = -1;
    private boolean aMm = false;
    private boolean aMn = true;
    private C0329e aMo;
    private ImageView aMp;
    private LinearLayout aMq;
    private LinearLayout aMr;
    private int[] aMs;
    private CharSequence[] aMt;
    private TextView aMu;
    private MicroSpurAndDngSeekBar aMv;
    private ArrayList aMw = null;
    private C0791g aMx;
    private ad aMy;
    private int aMz;

    public C0789e(View view, C0329e c0329e, C0791g c0791g) {
        this.aMo = c0329e;
        this.aMC = bcC(R.string.pref_camera_interval_pro_entry_0);
        this.aMx = c0791g;
        this.aMA = (IconListPreference) this.aMo.SR().tp("pref_dng_camera_type");
        bcG(view);
        this.aMv.qV(new C0802r(this));
    }

    public void bcF() {
        Object[] objArr = new Object[]{this.aMr, this.aMv, this.aME};
        this.aMy = new ad(objArr, "translationY", 0.0f, (float) C0616j.aoT(72), 500);
        this.aMy.rF(new C0803s(this));
    }

    public void bcK() {
        this.aMy.release();
        this.aMy = null;
    }

    public void bcM() {
        this.aMq.setVisibility(0);
    }

    public void bcE() {
        this.aMq.setVisibility(8);
    }

    public void bcL() {
        if (this.aMu.getVisibility() != 0) {
            this.aMr.setBackground(null);
            this.aMp.setBackgroundResource(R.drawable.microspur_layout_container_right_unselect);
            this.aMu.setBackgroundResource(R.drawable.microspur_layout_container_middle_unselect);
            this.aMu.setVisibility(0);
            this.aMF.setBackgroundResource(R.drawable.microspur_layout_container_left_select);
            this.aMF.setTextColor(this.aMk);
            this.aMu.setTextColor(this.aMl);
            LayoutParams layoutParams = this.aMp.getLayoutParams();
            layoutParams.width = this.aMj;
            this.aMp.setLayoutParams(layoutParams);
            layoutParams = new LinearLayout.LayoutParams(this.aMF.getLayoutParams());
            layoutParams.width = this.aMj;
            layoutParams.rightMargin = 0;
            this.aMF.setLayoutParams(layoutParams);
        }
    }

    public void bcD() {
        if (this.aMu.getVisibility() != 8) {
            this.aMr.setBackgroundResource(R.drawable.nubia_white_dialog_bg);
            this.aMp.setBackground(null);
            this.aMu.setVisibility(8);
            this.aMF.setBackground(null);
            this.aMF.setTextColor(this.aMl);
            this.aMu.setTextColor(this.aMl);
            LayoutParams layoutParams = this.aMp.getLayoutParams();
            layoutParams.width = -2;
            this.aMp.setLayoutParams(layoutParams);
            layoutParams = new LinearLayout.LayoutParams(this.aMF.getLayoutParams());
            layoutParams.width = -2;
            layoutParams.rightMargin = C0616j.aoT(6);
            this.aMF.setLayoutParams(layoutParams);
            this.aME.setVisibility(0);
            this.aMv.setVisibility(8);
        }
    }

    private void bcJ() {
        if (this.aMu.getVisibility() != 8) {
            this.aMF.setBackgroundResource(R.drawable.microspur_layout_container_left_select);
            this.aMu.setBackgroundResource(R.drawable.microspur_layout_container_middle_unselect);
            this.aMF.setTextColor(this.aMk);
            this.aMu.setTextColor(this.aMl);
            this.aME.setVisibility(0);
            this.aMv.setVisibility(8);
        }
    }

    private void bcI() {
        this.aMF.setBackgroundResource(R.drawable.microspur_layout_container_left_unselect);
        this.aMu.setBackgroundResource(R.drawable.microspur_layout_container_middle_select);
        this.aMF.setTextColor(this.aMl);
        this.aMu.setTextColor(this.aMk);
        this.aMv.setVisibility(0);
        this.aME.setVisibility(8);
        String string = this.aMo.SS().getString("pref_camera_interval_pro", "-1");
        this.aMv.qW(new String[]{this.aMC, "60S"});
        this.aMv.qX(0, Integer.parseInt(string));
    }

    private void bcG(View view) {
        this.aMF = (TextView) view.findViewById(R.id.handler_type);
        this.aMu = (TextView) view.findViewById(R.id.handler_interval);
        this.aMp = (ImageView) view.findViewById(R.id.handler_arrow);
        this.aMv = (MicroSpurAndDngSeekBar) view.findViewById(R.id.interval_seekbar);
        this.aMD = (GridView) view.findViewById(R.id.type_grid);
        this.aME = view.findViewById(R.id.type_grid_layout);
        this.aMq = (LinearLayout) view.findViewById(R.id.dng_controller_container);
        this.aMr = (LinearLayout) view.findViewById(R.id.dng_controller_handler);
        this.aMF.setOnClickListener(new C0804t(this));
        this.aMu.setOnClickListener(new C0805u(this));
        this.aMr.setOnClickListener(new C0806v(this));
        bcH(this.aMo.SN());
    }

    private void bcH(Context context) {
        this.aMs = this.aMA.uP();
        this.aMt = this.aMA.vb();
        this.aMF.setText(this.aMA.uZ());
        bcB();
        this.aMD.setNumColumns(this.aMs.length);
        this.aMD.setColumnWidth(C0616j.aoT(64));
        Context context2 = context;
        this.aMB = new C0790f(this, context2, this.aMw, R.layout.drawer_icon, new String[]{"DrawerListIcon", "DrawerListTitle"}, new int[]{R.id.icon, R.id.title});
        this.aMD.setAdapter(this.aMB);
        this.aMD.setOnItemClickListener(new C0807w(this));
    }

    private void bcB() {
        if (this.aMw == null) {
            this.aMw = new ArrayList();
        }
        this.aMw.clear();
        for (int i = 0; i < this.aMs.length; i++) {
            HashMap hashMap = new HashMap();
            hashMap.put("DrawerListIcon", Integer.valueOf(this.aMs[i]));
            hashMap.put("DrawerListTitle", this.aMt[i]);
            this.aMw.add(hashMap);
        }
    }

    private String bcC(int i) {
        return this.aMo.SN().getString(i);
    }

    public void fc(int i, boolean z) {
        this.aMz = i;
        this.aMG = z;
        if (this.aMB != null) {
            this.aMB.notifyDataSetChanged();
        }
    }

    public void setEnabled(boolean z) {
        this.aMD.setEnabled(z);
    }
}
