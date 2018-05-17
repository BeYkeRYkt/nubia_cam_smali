package com.android.pretty;

import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.ui.ad;
import com.p010a.C0090a;

public class C1090w implements C1074o {
    private C0329e avj;
    private C1078h avk;
    private View avl;
    private ImageView avm;
    private boolean avn;
    private boolean avo;
    private ad avp;
    private View avq;
    private C1051n avr;

    public C1090w(C0329e c0329e) {
        this.avj = c0329e;
    }

    public void aGK(C1051n c1051n) {
        this.avr = c1051n;
    }

    public void aGE(ViewGroup viewGroup) {
        LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.pretty_setting_layout, viewGroup, true);
        aJA(viewGroup);
    }

    private boolean aJB() {
        if (this.avn && this.avq.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!aJB()) {
            return false;
        }
        C0090a.bvo("NormalPrettySettingLayout", "Setting animating, prettyFrament consume the TouchEvent");
        return true;
    }

    public void setVisibility(int i) {
        this.avq.setVisibility(i);
    }

    public void aGI() {
        this.avk.aHo(true);
    }

    private void aJA(View view) {
        this.avq = view.findViewById(R.id.pretty_high_settings);
        aJz(view);
        this.avk = new C1078h(this.avj.SN(), view, this.avj.SS(), new C1069O(this));
    }

    private void aJz(View view) {
        this.avl = view.findViewById(R.id.handler);
        this.avm = (ImageView) view.findViewById(R.id.handler_arrow);
        this.avl.setOnClickListener(new C1070P(this));
        View[] viewArr = new View[]{this.avq};
        this.avp = new ad(viewArr, "translationY", 0.0f, this.avj.SN().getResources().getDimension(R.dimen.dimens_67), 500);
        this.avp.rF(new C1071Q(this));
    }
}
